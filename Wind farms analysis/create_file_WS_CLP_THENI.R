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
THV_Windspeed_2011 <- read_excel("/Users/zakari/Desktop/CLP\ data/Theni/THV-Wind\ Speed\ 2011.xlsx")
THV_Windspeed_2012 <- read_excel("/Users/zakari/Desktop/CLP\ data/Theni/THV-Wind\ Speed\ 2012.xlsx")
THV_Windspeed_2013 <- read_excel("/Users/zakari/Desktop/CLP\ data/Theni/THV-Wind\ Speed\ 2013.xlsx")
THV_Windspeed_2014 <- read_excel( "/Users/zakari/Desktop/CLP\ data/Theni/THV-Wind\ Speed\ 2014.xlsx")
THV_Windspeed_2015 <- read_excel("/Users/zakari/Desktop/CLP\ data/Theni/Theni_wind_farm_2015/THV\ -\ Windspeed\ -\ 2015.xlsx")
THV_Windspeed_2016 <- read_excel("/Users/zakari/Desktop/CLP\ data/Theni/THV\ -\ Windspeed\ -\ 2016.xlsx")
THV_Windspeed_2017 <- read_excel("/Users/zakari/Desktop/CLP\ data/Theni/THV\ -\ Windspeed\ -\ 2017.xlsx")

THV_Windspeed_2015$PCTimeStamp<-as.POSIXct(THV_Windspeed_2015$PCTimeStamp)
THV_Windspeed_2016$PCTimeStamp<-as.POSIXct(THV_Windspeed_2016$PCTimeStamp)
THV_Windspeed_2017$PCTimeStamp<-as.POSIXct(THV_Windspeed_2017$PCTimeStamp)

THV_2011_time<-as.POSIXct(THV_Windspeed_2011$X__1[3:52562])
THV_2012_time<-as.POSIXct(THV_Windspeed_2012$X__1[3:52706])

THV_2013_time<-as.POSIXct(THV_Windspeed_2013$X__1[3:52562])
THV_2014_time<-as.POSIXct(THV_Windspeed_2014$X__1[3:52562])

THV_2015_time<-THV_Windspeed_2015$PCTimeStamp
THV_2016_time<-THV_Windspeed_2016$PCTimeStamp
THV_2017_time<-THV_Windspeed_2017$PCTimeStamp






wind_2011_m1_data=matrix(0,nrow=52560,ncol=30)
wind_2011_m1=data.frame(THV_Windspeed_2011[3:52562,c(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60)])
wind_2011_m2_data=matrix(0,nrow=52560,ncol=30)
wind_2011_m2=data.frame(THV_Windspeed_2011[3:52562,c(2+1,4+1,6+1,8+1,10+1,12+1,14+1,16+1,18+1,20+1,22+1,24+1,26+1,28+1,30+1,32+1,34+1,36+1,38+1,40+1,42+1,44+1,46+1,48+1,50+1,52+1,54+1,56+1,58+1,60+1)])


wind_2012_m1_data=matrix(0,nrow=52704,ncol=30)
wind_2012_m1=data.frame(THV_Windspeed_2012[3:52706,c(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60)])
wind_2012_m2_data=matrix(0,nrow=52704,ncol=30)
wind_2012_m2=data.frame(THV_Windspeed_2012[3:52706,c(2+1,4+1,6+1,8+1,10+1,12+1,14+1,16+1,18+1,20+1,22+1,24+1,26+1,28+1,30+1,32+1,34+1,36+1,38+1,40+1,42+1,44+1,46+1,48+1,50+1,52+1,54+1,56+1,58+1,60+1)])


wind_2013_m1_data=matrix(0,nrow=52560,ncol=30)
wind_2013_m1=data.frame(THV_Windspeed_2013[3:52562,c(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60)])
wind_2013_m2_data=matrix(0,nrow=52560,ncol=30)
wind_2013_m2=data.frame(THV_Windspeed_2013[3:52562,c(2+1,4+1,6+1,8+1,10+1,12+1,14+1,16+1,18+1,20+1,22+1,24+1,26+1,28+1,30+1,32+1,34+1,36+1,38+1,40+1,42+1,44+1,46+1,48+1,50+1,52+1,54+1,56+1,58+1,60+1)])

wind_2014_m1_data=matrix(0,nrow=52560,ncol=30)
wind_2014_m1=data.frame(THV_Windspeed_2014[3:52562,c(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60)])
wind_2014_m2_data=matrix(0,nrow=52560,ncol=30)
wind_2014_m2=data.frame(THV_Windspeed_2014[3:52562,c(2+1,4+1,6+1,8+1,10+1,12+1,14+1,16+1,18+1,20+1,22+1,24+1,26+1,28+1,30+1,32+1,34+1,36+1,38+1,40+1,42+1,44+1,46+1,48+1,50+1,52+1,54+1,56+1,58+1,60+1)])


## wind_2012_m1_data	52707 obs. of  30 variables
for (i in 1:52704)
{
  for (j in 1:30)
    
  {
    
    wind_2012_m1_data[i,j]<- as.numeric(wind_2012_m1[i,j])
    wind_2012_m2_data[i,j]<- as.numeric(wind_2012_m2[i,j])
  }
}
for (ii in 1:52560)
{
  for (j in 1:30)
    
  {
    
    wind_2011_m1_data[ii,j]<- as.numeric(wind_2011_m1[ii,j])
    wind_2011_m2_data[ii,j]<- as.numeric(wind_2011_m2[ii,j])
    wind_2013_m1_data[ii,j]<- as.numeric(wind_2013_m1[ii,j])
    wind_2013_m2_data[ii,j]<- as.numeric(wind_2013_m2[ii,j])
    
    wind_2014_m1_data[ii,j]<- as.numeric(wind_2014_m1[ii,j])
    wind_2014_m2_data[ii,j]<- as.numeric(wind_2014_m2[ii,j])
    
  }
}
test1=data.frame( wind_2011_m1_data, wind_2011_m2_data)
test2=data.frame( wind_2012_m1_data, wind_2012_m2_data)
test3=data.frame( wind_2013_m1_data, wind_2013_m2_data)
test4=data.frame( wind_2014_m1_data, wind_2014_m2_data)
test5=data.frame(THV_Windspeed_2015[,2:31],THV_Windspeed_2015[,32:61])
test6=data.frame( THV_Windspeed_2016[,2:31],THV_Windspeed_2016[,32:61])
test7=data.frame( THV_Windspeed_2017[,2:31],THV_Windspeed_2017[,32:61])
names(test1)=names(test5)
names(test2)=names(test5)
names(test3)=names(test5)
names(test4)=names(test5)

b=rbind(test1,test2,test3,test4,test5,test6,test7)
##b[is.na(b)] <- -0.009999
# 368208st
tt=data.frame(PCTimeStamp=c(THV_2011_time,THV_2012_time,THV_2013_time,THV_2014_time,THV_2015_time,THV_2016_time,THV_2017_time))#THV_Windspeed_2011_2014_time=matrix(0,nrow=210380,ncol=1)

test_all=data.frame(tt,b)
save(test_all,file="wind_data_theni.Rda")
write.table(test_all, file = "winddata_theni_missing0.009999.txt", sep = "\t",
            row.names = FALSE,col.names = names(test_all))

avg_wind_year1=rowMeans(test1,na.rm = TRUE)
wind_data_year1=data.frame(THV_2011_time,avg_wind_year1)
THV_Windspeed_2011_daily_summary <- wind_data_year1 %>%
  mutate(time = format(wind_data_year1$THV_2011_time, "%D"))%>%
  group_by(time)%>%
  summarize(daily_wind=mean(wind_data_year1$avg_wind_year1, na.rm=TRUE))
THV_Windspeed_2011_monthly_summary <- wind_data_year1 %>%
  mutate(time= months(wind_data_year1$THV_2011_time))%>%
  group_by(time)%>%
  summarize(monthly_wind=mean(wind_data_year1$avg_wind_year1, na.rm=TRUE))

avg_wind_year2=rowMeans(test2,na.rm = TRUE)
wind_data_year2=data.frame(THV_2012_time,avg_wind_year2)
THV_Windspeed_2012_daily_summary <- wind_data_year2 %>%
  mutate(time = format(wind_data_year2$THV_2012_time, "%D"))%>%
  group_by(time)%>%
  summarize(daily_wind=mean(wind_data_year2$avg_wind_year2, na.rm=TRUE))
THV_Windspeed_2012_monthly_summary <- THV_Windspeed_2012_daily_summary %>%
  mutate(time= months(THV_Windspeed_2012_daily_summary$time))%>%
  group_by(time)%>%
  summarize(monthly_wind=mean(THV_Windspeed_2012_daily_summary$daily_wind, na.rm=TRUE))

test2=data.frame( wind_2012_m1_data, wind_2012_m2_data)

test3=data.frame( wind_2013_m1_data, wind_2013_m2_data)
test4=data.frame( wind_2014_m1_data, wind_2014_m2_data)
test5=data.frame(THV_Windspeed_2015[,2:31],THV_Windspeed_2015[,32:61])
test6=data.frame( THV_Windspeed_2016[,2:31],THV_Windspeed_2016[,32:61])
test7=data.frame( THV_Windspeed_2017[,2:31],THV_Windspeed_2017[,32:61])
names(test1)=names(test5)
names(test2)=names(test5)
names(test3)=names(test5)
names(test4)=names(test5)

b=rbind(test1,test2,test3,test4,test5,test6,test7)
##b[is.na(b)] <- -0.009999
# 368208st
tt=data.frame(PCTimeStamp=c(THV_2011_time,THV_2012_time,THV_2013_time,THV_2014_time,THV_2015_time,THV_2016_time,THV_2017_time))#THV_Windspeed_2011_2014_time=matrix(0,nrow=210380,ncol=1)

test_all=data.frame(tt,b)
save(test_all,file="wind_data_theni.Rda")
write.table(test_all, file = "winddata_theni_missing0.009999.txt", sep = "\t",
            row.names = FALSE,col.names = names(test_all))
