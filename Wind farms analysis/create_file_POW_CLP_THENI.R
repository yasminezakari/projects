library(readxl)
library(readr)
library(dplyr)
library(tidyr)
library(tidyverse)
library(ncdf4)
library(ncdf.tools)
library(raster) # package for raster manipulation
library(rgdal) # package for geospatial analysis
library(ggplot2) # package for plotting
library(maptools)
# Installing
#install.packages("readr")
# Loading
library("readr")
#rm(list=ls())
THV_ActivePower_2011 <- read_excel("/Users/zakari/Desktop/CLP\ data/Theni/THV-Active Power 2011.xlsx")
THV_ActivePower_2012 <- read_excel("/Users/zakari/Desktop/CLP\ data/Theni/THV-Active Power 2012.xlsx")
THV_ActivePower_2013 <- read_excel("/Users/zakari/Desktop/CLP\ data/Theni/THV-Active Power 2013.xlsx")
THV_ActivePower_2014 <- read_excel( "/Users/zakari/Desktop/CLP\ data/Theni/THV-Active Power-2014.xlsx")
THV_ActivePower_2015 <- read_excel("/Users/zakari/Desktop/CLP\ data/Theni/THV - Active Power - 2015.xlsx")
THV_ActivePower_2016 <- read_excel("/Users/zakari/Desktop/CLP\ data/Theni/THV - Active Power - 2016.xlsx")
THV_ActivePower_2017 <- read_excel("/Users/zakari/Desktop/CLP\ data/Theni/THV - Active Power - 2017.xlsx")

THV_ActivePower_2015$PCTimeStamp<-as.POSIXct(THV_ActivePower_2015$PCTimeStamp)
THV_ActivePower_2016$PCTimeStamp<-as.POSIXct(THV_ActivePower_2016$PCTimeStamp)
THV_ActivePower_2017$PCTimeStamp<-as.POSIXct(THV_ActivePower_2017$PCTimeStamp)


THV_2011_time<-as.POSIXct(THV_ActivePower_2011$X__1[3:52562])
THV_2012_time<-as.POSIXct(THV_ActivePower_2012$X__1[3:52706])

THV_2013_time<-as.POSIXct(THV_ActivePower_2013$X__1[3:52562])
THV_2014_time<-as.POSIXct(THV_ActivePower_2014$X__1[3:52562])

THV_2015_time<-THV_ActivePower_2015$PCTimeStamp
THV_2016_time<-THV_ActivePower_2016$PCTimeStamp
THV_2017_time<-THV_ActivePower_2017$PCTimeStamp






ActivePower_2011_data=matrix(0,nrow=52560,ncol=30)
ActivePower_2011=data.frame(THV_ActivePower_2011[3:52562,c(2:31)])

ActivePower_2012_data=matrix(0,nrow=52704,ncol=30)
ActivePower_2012=data.frame(THV_ActivePower_2012[3:52706,c(2:31)])

ActivePower_2013_data=matrix(0,nrow=52560,ncol=30)
ActivePower_2013=data.frame(THV_ActivePower_2013[3:52562,c(2:31)])

ActivePower_2014_data=matrix(0,nrow=52560,ncol=30)
ActivePower_2014=data.frame(THV_ActivePower_2014[3:52562,c(2:31)])


## ActivePower_2012_data	52707 obs. of  30 variables
for (i in 1:52704)
{
  for (j in 1:30)
    
  {
    
    ActivePower_2012_data[i,j]<- as.numeric(ActivePower_2012[i,j])
  }
}
for (ii in 1:52560)
{
  for (j in 1:30)
    
  {
    
    ActivePower_2011_data[ii,j]<- as.numeric(ActivePower_2011[ii,j])
    ActivePower_2013_data[ii,j]<- as.numeric(ActivePower_2013[ii,j])

    ActivePower_2014_data[ii,j]<- as.numeric(ActivePower_2014[ii,j])

  }
}
ActivePower_2015_data=data.frame(THV_ActivePower_2015[,2:31])
ActivePower_2016_data=data.frame(THV_ActivePower_2016[,2:31])
ActivePower_2017_data=data.frame(THV_ActivePower_2017[,2:31])

ActivePower_2011_data=as_data_frame(ActivePower_2011_data)
ActivePower_2012_data=as_data_frame(ActivePower_2012_data)
ActivePower_2013_data=as_data_frame(ActivePower_2013_data)
ActivePower_2014_data=as_data_frame(ActivePower_2014_data)

names(ActivePower_2011_data)=names(ActivePower_2015_data)
names(ActivePower_2012_data)=names(ActivePower_2015_data)
names(ActivePower_2013_data)=names(ActivePower_2015_data)
names(ActivePower_2014_data)=names(ActivePower_2015_data)
names(ActivePower_2015_data)=names(ActivePower_2015_data)

power_data=rbind(ActivePower_2011_data,ActivePower_2012_data,ActivePower_2013_data,ActivePower_2014_data,ActivePower_2015_data,ActivePower_2016_data,ActivePower_2017_data)
power_data[is.na(power_data)] <- -0.009999
# 368208st
tt_power=data.frame(PCTimeStamp=c(THV_2011_time,THV_2012_time,THV_2013_time,THV_2014_time,THV_2015_time,THV_2016_time,THV_2017_time))#THV_ActivePower_2011_2014_time=matrix(0,nrow=210380,ncol=1)

power_data_thv_theni=data.frame(tt_power,power_data)
power_data_thv_theni[is.na(power_data_thv_theni)] <- -0.009999
# 368208st
write.table(power_data_thv_theni, file = "powerdata_THV_tehni_misssing0.009999.txt", sep = "\t",
            row.names = FALSE)
