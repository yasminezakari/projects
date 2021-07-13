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
#rm(list=ls())
JATH_Windspeed_2017 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2017\ Jath\ Wind\ Speed_20190102.xlsx")
JATH_Windspeed_2017$X__1<-THV_Windspeed_2017$PCTimeStamp[1:52406]

JATH_Windspeed_2017_data=matrix(0,nrow=52406,ncol=30)
JATH_Windspeed_2017=data.frame(JATH_Windspeed_2017[4:52409,2:31])
for (i in 1:52406)
{
  for (j in 1:30)
    
  {
    JATH_Windspeed_2017_data[i,j]<- as.numeric(JATH_Windspeed_2017[i,j])
  }
}

#JATH_Windspeed_2017$avg_wind=rowMeans(JATH_Windspeed_2017_data, na.rm=TRUE)
JATH_Windspeed_2017$X__1<-THV_Windspeed_2017$PCTimeStamp[1:52406]
JATH_Windspeed_2017=cbind(THV_Windspeed_2017$PCTimeStamp[1:52406],JATH_Windspeed_2017_data)

JATH_Windspeed_2016_Q1_01_CLPJT01 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT01")
JATH_Windspeed_2016_Q1_01_CLPJT02 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT02")
JATH_Windspeed_2016_Q1_01_CLPJT03 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT03")
JATH_Windspeed_2016_Q1_01_CLPJT04 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT04")
JATH_Windspeed_2016_Q1_01_CLPJT05 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT05")
JATH_Windspeed_2016_Q1_01_CLPJT06 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT06")
JATH_Windspeed_2016_Q1_01_CLPJT07 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT07")
JATH_Windspeed_2016_Q1_01_CLPJT08 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT08")
JATH_Windspeed_2016_Q1_01_CLPJT09 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT09")
JATH_Windspeed_2016_Q1_01_CLPJT10 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT10")
JATH_Windspeed_2016_Q1_01_CLPJT11 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT11")
JATH_Windspeed_2016_Q1_01_CLPJT12 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT12")
JATH_Windspeed_2016_Q1_01_CLPJT13 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT13")
JATH_Windspeed_2016_Q1_01_CLPJT14 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT14")
JATH_Windspeed_2016_Q1_01_CLPJT15 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT15")
JATH_Windspeed_2016_Q1_01_CLPJT16 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT16")
JATH_Windspeed_2016_Q1_01_CLPJT17 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT17")
JATH_Windspeed_2016_Q1_01_CLPJT18 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT18")
JATH_Windspeed_2016_Q1_01_CLPJT19 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT19")
JATH_Windspeed_2016_Q1_01_CLPJT20 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT20")
JATH_Windspeed_2016_Q1_01_CLPJT21 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT21")
JATH_Windspeed_2016_Q1_01_CLPJT22 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT22")
JATH_Windspeed_2016_Q1_01_CLPJT23 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT23")
JATH_Windspeed_2016_Q1_01_CLPJT24 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT24")
JATH_Windspeed_2016_Q1_01_CLPJT25 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT25")
JATH_Windspeed_2016_Q1_01_CLPJT26 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT26")
JATH_Windspeed_2016_Q1_01_CLPJT27 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT27")
JATH_Windspeed_2016_Q1_01_CLPJT28 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT28")
JATH_Windspeed_2016_Q1_01_CLPJT29 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT29")
JATH_Windspeed_2016_Q1_01_CLPJT30 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201601.xlsx", sheet = "CLPJT30")


#n=dim(JATH_Windspeed_2016_Q1_CLPJT01)
#n[1]
wind_data_jath_2016_Q1_01<-cbind(JATH_Windspeed_2016_Q1_01_CLPJT01[3:4408,4],JATH_Windspeed_2016_Q1_01_CLPJT02[3:4408,4],JATH_Windspeed_2016_Q1_01_CLPJT03[3:4408,4],
                                 JATH_Windspeed_2016_Q1_01_CLPJT04[3:4408,4],JATH_Windspeed_2016_Q1_01_CLPJT05[3:4408,4],JATH_Windspeed_2016_Q1_01_CLPJT06[3:4408,4],
                                 JATH_Windspeed_2016_Q1_01_CLPJT07[3:4408,4],JATH_Windspeed_2016_Q1_01_CLPJT08[3:4408,4],JATH_Windspeed_2016_Q1_01_CLPJT09[3:4408,4],
                                 JATH_Windspeed_2016_Q1_01_CLPJT10[3:4408,4], 
                                 JATH_Windspeed_2016_Q1_01_CLPJT11[3:4408,4],JATH_Windspeed_2016_Q1_01_CLPJT12[3:4408,4],JATH_Windspeed_2016_Q1_01_CLPJT13[3:4408,4],
                                 JATH_Windspeed_2016_Q1_01_CLPJT14[3:4408,4],JATH_Windspeed_2016_Q1_01_CLPJT15[3:4408,4],JATH_Windspeed_2016_Q1_01_CLPJT16[3:4408,4],
                                 JATH_Windspeed_2016_Q1_01_CLPJT17[3:4408,4],JATH_Windspeed_2016_Q1_01_CLPJT18[3:4408,4],JATH_Windspeed_2016_Q1_01_CLPJT19[3:4408,4],
                                 JATH_Windspeed_2016_Q1_01_CLPJT20[3:4408,4],
                                 JATH_Windspeed_2016_Q1_01_CLPJT21[3:4408,4],JATH_Windspeed_2016_Q1_01_CLPJT22[3:4408,4],JATH_Windspeed_2016_Q1_01_CLPJT23[3:4408,4],
                                 JATH_Windspeed_2016_Q1_01_CLPJT24[3:4408,4],JATH_Windspeed_2016_Q1_01_CLPJT25[3:4408,4],JATH_Windspeed_2016_Q1_01_CLPJT26[3:4408,4],
                                 JATH_Windspeed_2016_Q1_01_CLPJT27[3:4408,4],JATH_Windspeed_2016_Q1_01_CLPJT28[3:4408,4],JATH_Windspeed_2016_Q1_01_CLPJT29[3:4408,4],
                                 JATH_Windspeed_2016_Q1_01_CLPJT30[3:4408,4])

######### 
JATH_Windspeed_2016_Q1_02_CLPJT01 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT01")
JATH_Windspeed_2016_Q1_02_CLPJT02 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT02")
JATH_Windspeed_2016_Q1_02_CLPJT03 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT03")
JATH_Windspeed_2016_Q1_02_CLPJT04 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT04")
JATH_Windspeed_2016_Q1_02_CLPJT05 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT05")
JATH_Windspeed_2016_Q1_02_CLPJT06 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT06")
JATH_Windspeed_2016_Q1_02_CLPJT07 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT07")
JATH_Windspeed_2016_Q1_02_CLPJT08 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT08")
JATH_Windspeed_2016_Q1_02_CLPJT09 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT09")
JATH_Windspeed_2016_Q1_02_CLPJT10 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT10")
JATH_Windspeed_2016_Q1_02_CLPJT11 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT11")
JATH_Windspeed_2016_Q1_02_CLPJT12 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT12")
JATH_Windspeed_2016_Q1_02_CLPJT13 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT13")
JATH_Windspeed_2016_Q1_02_CLPJT14 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT14")
JATH_Windspeed_2016_Q1_02_CLPJT15 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT15")
JATH_Windspeed_2016_Q1_02_CLPJT16 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT16")
JATH_Windspeed_2016_Q1_02_CLPJT17 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT17")
JATH_Windspeed_2016_Q1_02_CLPJT18 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT18")
JATH_Windspeed_2016_Q1_02_CLPJT19 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT19")
JATH_Windspeed_2016_Q1_02_CLPJT20 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT20")
JATH_Windspeed_2016_Q1_02_CLPJT21 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT21")
JATH_Windspeed_2016_Q1_02_CLPJT22 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT22")
JATH_Windspeed_2016_Q1_02_CLPJT23 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT23")
JATH_Windspeed_2016_Q1_02_CLPJT24 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT24")
JATH_Windspeed_2016_Q1_02_CLPJT25 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT25")
JATH_Windspeed_2016_Q1_02_CLPJT26 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT26")
JATH_Windspeed_2016_Q1_02_CLPJT27 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT27")
JATH_Windspeed_2016_Q1_02_CLPJT28 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT28")
JATH_Windspeed_2016_Q1_02_CLPJT29 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT29")
JATH_Windspeed_2016_Q1_02_CLPJT30 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT30")


#n=dim(JATH_Windspeed_2016_Q1_CLPJT01)
#n[1]
n_Q1_02=4194
wind_data_jath_2016_Q1_02<-cbind(JATH_Windspeed_2016_Q1_02_CLPJT01[3:n_Q1_02,4],JATH_Windspeed_2016_Q1_02_CLPJT02[3:n_Q1_02,4],JATH_Windspeed_2016_Q1_02_CLPJT03[3:n_Q1_02,4],
                                 JATH_Windspeed_2016_Q1_02_CLPJT04[3:n_Q1_02,4],JATH_Windspeed_2016_Q1_02_CLPJT05[3:n_Q1_02,4],JATH_Windspeed_2016_Q1_02_CLPJT06[3:n_Q1_02,4],
                                 JATH_Windspeed_2016_Q1_02_CLPJT07[3:n_Q1_02,4],JATH_Windspeed_2016_Q1_02_CLPJT08[3:n_Q1_02,4],JATH_Windspeed_2016_Q1_02_CLPJT09[3:n_Q1_02,4],
                                 JATH_Windspeed_2016_Q1_02_CLPJT10[3:n_Q1_02,4], 
                                 JATH_Windspeed_2016_Q1_02_CLPJT11[3:n_Q1_02,4],JATH_Windspeed_2016_Q1_02_CLPJT12[3:n_Q1_02,4],JATH_Windspeed_2016_Q1_02_CLPJT13[3:n_Q1_02,4],
                                 JATH_Windspeed_2016_Q1_02_CLPJT14[3:n_Q1_02,4],JATH_Windspeed_2016_Q1_02_CLPJT15[3:n_Q1_02,4],JATH_Windspeed_2016_Q1_02_CLPJT16[3:n_Q1_02,4],
                                 JATH_Windspeed_2016_Q1_02_CLPJT17[3:n_Q1_02,4],JATH_Windspeed_2016_Q1_02_CLPJT18[3:n_Q1_02,4],JATH_Windspeed_2016_Q1_02_CLPJT19[3:n_Q1_02,4],
                                 JATH_Windspeed_2016_Q1_02_CLPJT20[3:n_Q1_02,4],
                                 JATH_Windspeed_2016_Q1_02_CLPJT21[3:n_Q1_02,4],JATH_Windspeed_2016_Q1_02_CLPJT22[3:n_Q1_02,4],JATH_Windspeed_2016_Q1_02_CLPJT23[3:n_Q1_02,4],
                                 JATH_Windspeed_2016_Q1_02_CLPJT24[3:n_Q1_02,4],JATH_Windspeed_2016_Q1_02_CLPJT25[3:n_Q1_02,4],JATH_Windspeed_2016_Q1_02_CLPJT26[3:n_Q1_02,4],
                                 JATH_Windspeed_2016_Q1_02_CLPJT27[3:n_Q1_02,4],JATH_Windspeed_2016_Q1_02_CLPJT28[3:n_Q1_02,4],JATH_Windspeed_2016_Q1_02_CLPJT29[3:n_Q1_02,4],
                                 JATH_Windspeed_2016_Q1_02_CLPJT30[3:n_Q1_02,4])



######### 
JATH_Windspeed_2016_Q1_03_CLPJT01 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT01")
JATH_Windspeed_2016_Q1_03_CLPJT02 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT02")
JATH_Windspeed_2016_Q1_03_CLPJT03 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT03")
JATH_Windspeed_2016_Q1_03_CLPJT04 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT04")
JATH_Windspeed_2016_Q1_03_CLPJT05 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT05")
JATH_Windspeed_2016_Q1_03_CLPJT06 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT06")
JATH_Windspeed_2016_Q1_03_CLPJT07 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT07")
JATH_Windspeed_2016_Q1_03_CLPJT08 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT08")
JATH_Windspeed_2016_Q1_03_CLPJT09 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT09")
JATH_Windspeed_2016_Q1_03_CLPJT10 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT10")
JATH_Windspeed_2016_Q1_03_CLPJT11 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT11")
JATH_Windspeed_2016_Q1_03_CLPJT12 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT12")
JATH_Windspeed_2016_Q1_03_CLPJT13 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT13")
JATH_Windspeed_2016_Q1_03_CLPJT14 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT14")
JATH_Windspeed_2016_Q1_03_CLPJT15 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT15")
JATH_Windspeed_2016_Q1_03_CLPJT16 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT16")
JATH_Windspeed_2016_Q1_03_CLPJT17 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT17")
JATH_Windspeed_2016_Q1_03_CLPJT18 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT18")
JATH_Windspeed_2016_Q1_03_CLPJT19 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT19")
JATH_Windspeed_2016_Q1_03_CLPJT20 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT20")
JATH_Windspeed_2016_Q1_03_CLPJT21 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT21")
JATH_Windspeed_2016_Q1_03_CLPJT22 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT22")
JATH_Windspeed_2016_Q1_03_CLPJT23 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT23")
JATH_Windspeed_2016_Q1_03_CLPJT24 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT24")
JATH_Windspeed_2016_Q1_03_CLPJT25 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT25")
JATH_Windspeed_2016_Q1_03_CLPJT26 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT26")
JATH_Windspeed_2016_Q1_03_CLPJT27 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT27")
JATH_Windspeed_2016_Q1_03_CLPJT28 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT28")
JATH_Windspeed_2016_Q1_03_CLPJT29 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT29")
JATH_Windspeed_2016_Q1_03_CLPJT30 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q1/201602.xlsx", sheet = "CLPJT30")


#n=dim(JATH_Windspeed_2016_Q1_CLPJT01)
#n[1]
n_Q1_03=4408
wind_data_jath_2016_Q1_03<-cbind(JATH_Windspeed_2016_Q1_03_CLPJT01[3:n_Q1_03,4],JATH_Windspeed_2016_Q1_03_CLPJT02[3:n_Q1_03,4],JATH_Windspeed_2016_Q1_03_CLPJT03[3:n_Q1_03,4],
                                 JATH_Windspeed_2016_Q1_03_CLPJT04[3:n_Q1_03,4],JATH_Windspeed_2016_Q1_03_CLPJT05[3:n_Q1_03,4],JATH_Windspeed_2016_Q1_03_CLPJT06[3:n_Q1_03,4],
                                 JATH_Windspeed_2016_Q1_03_CLPJT07[3:n_Q1_03,4],JATH_Windspeed_2016_Q1_03_CLPJT08[3:n_Q1_03,4],JATH_Windspeed_2016_Q1_03_CLPJT09[3:n_Q1_03,4],
                                 JATH_Windspeed_2016_Q1_03_CLPJT10[3:n_Q1_03,4], 
                                 JATH_Windspeed_2016_Q1_03_CLPJT11[3:n_Q1_03,4],JATH_Windspeed_2016_Q1_03_CLPJT12[3:n_Q1_03,4],JATH_Windspeed_2016_Q1_03_CLPJT13[3:n_Q1_03,4],
                                 JATH_Windspeed_2016_Q1_03_CLPJT14[3:n_Q1_03,4],JATH_Windspeed_2016_Q1_03_CLPJT15[3:n_Q1_03,4],JATH_Windspeed_2016_Q1_03_CLPJT16[3:n_Q1_03,4],
                                 JATH_Windspeed_2016_Q1_03_CLPJT17[3:n_Q1_03,4],JATH_Windspeed_2016_Q1_03_CLPJT18[3:n_Q1_03,4],JATH_Windspeed_2016_Q1_03_CLPJT19[3:n_Q1_03,4],
                                 JATH_Windspeed_2016_Q1_03_CLPJT20[3:n_Q1_03,4],
                                 JATH_Windspeed_2016_Q1_03_CLPJT21[3:n_Q1_03,4],JATH_Windspeed_2016_Q1_03_CLPJT22[3:n_Q1_03,4],JATH_Windspeed_2016_Q1_03_CLPJT23[3:n_Q1_03,4],
                                 JATH_Windspeed_2016_Q1_03_CLPJT24[3:n_Q1_03,4],JATH_Windspeed_2016_Q1_03_CLPJT25[3:n_Q1_03,4],JATH_Windspeed_2016_Q1_03_CLPJT26[3:n_Q1_03,4],
                                 JATH_Windspeed_2016_Q1_03_CLPJT27[3:n_Q1_03,4],JATH_Windspeed_2016_Q1_03_CLPJT28[3:n_Q1_03,4],JATH_Windspeed_2016_Q1_03_CLPJT29[3:n_Q1_03,4],
                                 JATH_Windspeed_2016_Q1_03_CLPJT30[3:n_Q1_03,4])
###### 
#rm(list=ls())
JATH_Windspeed_2016_Q2_04_CLPJT01 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT01")
JATH_Windspeed_2016_Q2_04_CLPJT02 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT02")
JATH_Windspeed_2016_Q2_04_CLPJT03 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT03")
JATH_Windspeed_2016_Q2_04_CLPJT04 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT04")
JATH_Windspeed_2016_Q2_04_CLPJT05 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT05")
JATH_Windspeed_2016_Q2_04_CLPJT06 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT06")
JATH_Windspeed_2016_Q2_04_CLPJT07 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT07")
JATH_Windspeed_2016_Q2_04_CLPJT08 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT08")
JATH_Windspeed_2016_Q2_04_CLPJT09 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT09")
JATH_Windspeed_2016_Q2_04_CLPJT10 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT10")
JATH_Windspeed_2016_Q2_04_CLPJT11 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT11")
JATH_Windspeed_2016_Q2_04_CLPJT12 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT12")
JATH_Windspeed_2016_Q2_04_CLPJT13 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT13")
JATH_Windspeed_2016_Q2_04_CLPJT14 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT14")
JATH_Windspeed_2016_Q2_04_CLPJT15 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT15")
JATH_Windspeed_2016_Q2_04_CLPJT16 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT16")
JATH_Windspeed_2016_Q2_04_CLPJT17 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT17")
JATH_Windspeed_2016_Q2_04_CLPJT18 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT18")
JATH_Windspeed_2016_Q2_04_CLPJT19 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT19")
JATH_Windspeed_2016_Q2_04_CLPJT20 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT20")
JATH_Windspeed_2016_Q2_04_CLPJT21 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT21")
JATH_Windspeed_2016_Q2_04_CLPJT22 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT22")
JATH_Windspeed_2016_Q2_04_CLPJT23 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT23")
JATH_Windspeed_2016_Q2_04_CLPJT24 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT24")
JATH_Windspeed_2016_Q2_04_CLPJT25 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT25")
JATH_Windspeed_2016_Q2_04_CLPJT26 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT26")
JATH_Windspeed_2016_Q2_04_CLPJT27 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT27")
JATH_Windspeed_2016_Q2_04_CLPJT28 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT28")
JATH_Windspeed_2016_Q2_04_CLPJT29 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT29")
JATH_Windspeed_2016_Q2_04_CLPJT30 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT30")


#n=dim(JATH_Windspeed_2016_Q2_CLPJT01)
#n[1]
wind_data_jath_2016_Q2_04<-cbind(JATH_Windspeed_2016_Q2_04_CLPJT01[3:4408,4],JATH_Windspeed_2016_Q2_04_CLPJT02[3:4408,4],JATH_Windspeed_2016_Q2_04_CLPJT03[3:4408,4],
                                 JATH_Windspeed_2016_Q2_04_CLPJT04[3:4408,4],JATH_Windspeed_2016_Q2_04_CLPJT05[3:4408,4],JATH_Windspeed_2016_Q2_04_CLPJT06[3:4408,4],
                                 JATH_Windspeed_2016_Q2_04_CLPJT07[3:4408,4],JATH_Windspeed_2016_Q2_04_CLPJT08[3:4408,4],JATH_Windspeed_2016_Q2_04_CLPJT09[3:4408,4],
                                 JATH_Windspeed_2016_Q2_04_CLPJT10[3:4408,4], 
                                 JATH_Windspeed_2016_Q2_04_CLPJT11[3:4408,4],JATH_Windspeed_2016_Q2_04_CLPJT12[3:4408,4],JATH_Windspeed_2016_Q2_04_CLPJT13[3:4408,4],
                                 JATH_Windspeed_2016_Q2_04_CLPJT14[3:4408,4],JATH_Windspeed_2016_Q2_04_CLPJT15[3:4408,4],JATH_Windspeed_2016_Q2_04_CLPJT16[3:4408,4],
                                 JATH_Windspeed_2016_Q2_04_CLPJT17[3:4408,4],JATH_Windspeed_2016_Q2_04_CLPJT18[3:4408,4],JATH_Windspeed_2016_Q2_04_CLPJT19[3:4408,4],
                                 JATH_Windspeed_2016_Q2_04_CLPJT20[3:4408,4],
                                 JATH_Windspeed_2016_Q2_04_CLPJT21[3:4408,4],JATH_Windspeed_2016_Q2_04_CLPJT22[3:4408,4],JATH_Windspeed_2016_Q2_04_CLPJT23[3:4408,4],
                                 JATH_Windspeed_2016_Q2_04_CLPJT24[3:4408,4],JATH_Windspeed_2016_Q2_04_CLPJT25[3:4408,4],JATH_Windspeed_2016_Q2_04_CLPJT26[3:4408,4],
                                 JATH_Windspeed_2016_Q2_04_CLPJT27[3:4408,4],JATH_Windspeed_2016_Q2_04_CLPJT28[3:4408,4],JATH_Windspeed_2016_Q2_04_CLPJT29[3:4408,4],
                                 JATH_Windspeed_2016_Q2_04_CLPJT30[3:4408,4])

######### 
JATH_Windspeed_2016_Q2_05_CLPJT01 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT01")
JATH_Windspeed_2016_Q2_05_CLPJT02 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT02")
JATH_Windspeed_2016_Q2_05_CLPJT03 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT03")
JATH_Windspeed_2016_Q2_05_CLPJT04 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT04")
JATH_Windspeed_2016_Q2_05_CLPJT05 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT05")
JATH_Windspeed_2016_Q2_05_CLPJT06 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT06")
JATH_Windspeed_2016_Q2_05_CLPJT07 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT07")
JATH_Windspeed_2016_Q2_05_CLPJT08 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT08")
JATH_Windspeed_2016_Q2_05_CLPJT09 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT09")
JATH_Windspeed_2016_Q2_05_CLPJT10 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT10")
JATH_Windspeed_2016_Q2_05_CLPJT11 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT11")
JATH_Windspeed_2016_Q2_05_CLPJT12 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT12")
JATH_Windspeed_2016_Q2_05_CLPJT13 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT13")
JATH_Windspeed_2016_Q2_05_CLPJT14 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT14")
JATH_Windspeed_2016_Q2_05_CLPJT15 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT15")
JATH_Windspeed_2016_Q2_05_CLPJT16 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT16")
JATH_Windspeed_2016_Q2_05_CLPJT17 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT17")
JATH_Windspeed_2016_Q2_05_CLPJT18 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT18")
JATH_Windspeed_2016_Q2_05_CLPJT19 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT19")
JATH_Windspeed_2016_Q2_05_CLPJT20 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT20")
JATH_Windspeed_2016_Q2_05_CLPJT21 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT21")
JATH_Windspeed_2016_Q2_05_CLPJT22 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT22")
JATH_Windspeed_2016_Q2_05_CLPJT23 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT23")
JATH_Windspeed_2016_Q2_05_CLPJT24 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT24")
JATH_Windspeed_2016_Q2_05_CLPJT25 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT25")
JATH_Windspeed_2016_Q2_05_CLPJT26 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT26")
JATH_Windspeed_2016_Q2_05_CLPJT27 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT27")
JATH_Windspeed_2016_Q2_05_CLPJT28 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT28")
JATH_Windspeed_2016_Q2_05_CLPJT29 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT29")
JATH_Windspeed_2016_Q2_05_CLPJT30 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT30")


#n=dim(JATH_Windspeed_2016_Q2_CLPJT01)
#n[1]
n_Q2_05=4194
wind_data_jath_2016_Q2_05<-cbind(JATH_Windspeed_2016_Q2_05_CLPJT01[3:n_Q2_05,4],JATH_Windspeed_2016_Q2_05_CLPJT02[3:n_Q2_05,4],JATH_Windspeed_2016_Q2_05_CLPJT03[3:n_Q2_05,4],
                                 JATH_Windspeed_2016_Q2_05_CLPJT04[3:n_Q2_05,4],JATH_Windspeed_2016_Q2_05_CLPJT05[3:n_Q2_05,4],JATH_Windspeed_2016_Q2_05_CLPJT06[3:n_Q2_05,4],
                                 JATH_Windspeed_2016_Q2_05_CLPJT07[3:n_Q2_05,4],JATH_Windspeed_2016_Q2_05_CLPJT08[3:n_Q2_05,4],JATH_Windspeed_2016_Q2_05_CLPJT09[3:n_Q2_05,4],
                                 JATH_Windspeed_2016_Q2_05_CLPJT10[3:n_Q2_05,4], 
                                 JATH_Windspeed_2016_Q2_05_CLPJT11[3:n_Q2_05,4],JATH_Windspeed_2016_Q2_05_CLPJT12[3:n_Q2_05,4],JATH_Windspeed_2016_Q2_05_CLPJT13[3:n_Q2_05,4],
                                 JATH_Windspeed_2016_Q2_05_CLPJT14[3:n_Q2_05,4],JATH_Windspeed_2016_Q2_05_CLPJT15[3:n_Q2_05,4],JATH_Windspeed_2016_Q2_05_CLPJT16[3:n_Q2_05,4],
                                 JATH_Windspeed_2016_Q2_05_CLPJT17[3:n_Q2_05,4],JATH_Windspeed_2016_Q2_05_CLPJT18[3:n_Q2_05,4],JATH_Windspeed_2016_Q2_05_CLPJT19[3:n_Q2_05,4],
                                 JATH_Windspeed_2016_Q2_05_CLPJT20[3:n_Q2_05,4],
                                 JATH_Windspeed_2016_Q2_05_CLPJT21[3:n_Q2_05,4],JATH_Windspeed_2016_Q2_05_CLPJT22[3:n_Q2_05,4],JATH_Windspeed_2016_Q2_05_CLPJT23[3:n_Q2_05,4],
                                 JATH_Windspeed_2016_Q2_05_CLPJT24[3:n_Q2_05,4],JATH_Windspeed_2016_Q2_05_CLPJT25[3:n_Q2_05,4],JATH_Windspeed_2016_Q2_05_CLPJT26[3:n_Q2_05,4],
                                 JATH_Windspeed_2016_Q2_05_CLPJT27[3:n_Q2_05,4],JATH_Windspeed_2016_Q2_05_CLPJT28[3:n_Q2_05,4],JATH_Windspeed_2016_Q2_05_CLPJT29[3:n_Q2_05,4],
                                 JATH_Windspeed_2016_Q2_05_CLPJT30[3:n_Q2_05,4])



######### 
JATH_Windspeed_2016_Q2_06_CLPJT01 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT01")
JATH_Windspeed_2016_Q2_06_CLPJT02 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT02")
JATH_Windspeed_2016_Q2_06_CLPJT03 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT03")
JATH_Windspeed_2016_Q2_06_CLPJT04 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT04")
JATH_Windspeed_2016_Q2_06_CLPJT05 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT05")
JATH_Windspeed_2016_Q2_06_CLPJT06 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT06")
JATH_Windspeed_2016_Q2_06_CLPJT07 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT07")
JATH_Windspeed_2016_Q2_06_CLPJT08 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT08")
JATH_Windspeed_2016_Q2_06_CLPJT09 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT09")
JATH_Windspeed_2016_Q2_06_CLPJT10 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT10")
JATH_Windspeed_2016_Q2_06_CLPJT11 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT11")
JATH_Windspeed_2016_Q2_06_CLPJT12 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT12")
JATH_Windspeed_2016_Q2_06_CLPJT13 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT13")
JATH_Windspeed_2016_Q2_06_CLPJT14 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT14")
JATH_Windspeed_2016_Q2_06_CLPJT15 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT15")
JATH_Windspeed_2016_Q2_06_CLPJT16 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT16")
JATH_Windspeed_2016_Q2_06_CLPJT17 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT17")
JATH_Windspeed_2016_Q2_06_CLPJT18 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT18")
JATH_Windspeed_2016_Q2_06_CLPJT19 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT19")
JATH_Windspeed_2016_Q2_06_CLPJT20 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT20")
JATH_Windspeed_2016_Q2_06_CLPJT21 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT21")
JATH_Windspeed_2016_Q2_06_CLPJT22 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT22")
JATH_Windspeed_2016_Q2_06_CLPJT23 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT23")
JATH_Windspeed_2016_Q2_06_CLPJT24 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT24")
JATH_Windspeed_2016_Q2_06_CLPJT25 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT25")
JATH_Windspeed_2016_Q2_06_CLPJT26 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT26")
JATH_Windspeed_2016_Q2_06_CLPJT27 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT27")
JATH_Windspeed_2016_Q2_06_CLPJT28 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT28")
JATH_Windspeed_2016_Q2_06_CLPJT29 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT29")
JATH_Windspeed_2016_Q2_06_CLPJT30 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q2/201605.xlsx", sheet = "CLPJT30")


#n=dim(JATH_Windspeed_2016_Q2_CLPJT01)
#n[1]
n_Q2_06=4408
wind_data_jath_2016_Q2_06<-cbind(JATH_Windspeed_2016_Q2_06_CLPJT01[3:n_Q2_06,4],JATH_Windspeed_2016_Q2_06_CLPJT02[3:n_Q2_06,4],JATH_Windspeed_2016_Q2_06_CLPJT03[3:n_Q2_06,4],
                                 JATH_Windspeed_2016_Q2_06_CLPJT04[3:n_Q2_06,4],JATH_Windspeed_2016_Q2_06_CLPJT05[3:n_Q2_06,4],JATH_Windspeed_2016_Q2_06_CLPJT06[3:n_Q2_06,4],
                                 JATH_Windspeed_2016_Q2_06_CLPJT07[3:n_Q2_06,4],JATH_Windspeed_2016_Q2_06_CLPJT08[3:n_Q2_06,4],JATH_Windspeed_2016_Q2_06_CLPJT09[3:n_Q2_06,4],
                                 JATH_Windspeed_2016_Q2_06_CLPJT10[3:n_Q2_06,4], 
                                 JATH_Windspeed_2016_Q2_06_CLPJT11[3:n_Q2_06,4],JATH_Windspeed_2016_Q2_06_CLPJT12[3:n_Q2_06,4],JATH_Windspeed_2016_Q2_06_CLPJT13[3:n_Q2_06,4],
                                 JATH_Windspeed_2016_Q2_06_CLPJT14[3:n_Q2_06,4],JATH_Windspeed_2016_Q2_06_CLPJT15[3:n_Q2_06,4],JATH_Windspeed_2016_Q2_06_CLPJT16[3:n_Q2_06,4],
                                 JATH_Windspeed_2016_Q2_06_CLPJT17[3:n_Q2_06,4],JATH_Windspeed_2016_Q2_06_CLPJT18[3:n_Q2_06,4],JATH_Windspeed_2016_Q2_06_CLPJT19[3:n_Q2_06,4],
                                 JATH_Windspeed_2016_Q2_06_CLPJT20[3:n_Q2_06,4],
                                 JATH_Windspeed_2016_Q2_06_CLPJT21[3:n_Q2_06,4],JATH_Windspeed_2016_Q2_06_CLPJT22[3:n_Q2_06,4],JATH_Windspeed_2016_Q2_06_CLPJT23[3:n_Q2_06,4],
                                 JATH_Windspeed_2016_Q2_06_CLPJT24[3:n_Q2_06,4],JATH_Windspeed_2016_Q2_06_CLPJT25[3:n_Q2_06,4],JATH_Windspeed_2016_Q2_06_CLPJT26[3:n_Q2_06,4],
                                 JATH_Windspeed_2016_Q2_06_CLPJT27[3:n_Q2_06,4],JATH_Windspeed_2016_Q2_06_CLPJT28[3:n_Q2_06,4],JATH_Windspeed_2016_Q2_06_CLPJT29[3:n_Q2_06,4],
                                 JATH_Windspeed_2016_Q2_06_CLPJT30[3:n_Q2_06,4])

#####
#rm(list=ls())
JATH_Windspeed_2016_Q3_07_CLPJT01 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT01")
JATH_Windspeed_2016_Q3_07_CLPJT02 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT02")
JATH_Windspeed_2016_Q3_07_CLPJT03 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT03")
JATH_Windspeed_2016_Q3_07_CLPJT04 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT04")
JATH_Windspeed_2016_Q3_07_CLPJT05 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT05")
JATH_Windspeed_2016_Q3_07_CLPJT06 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT06")
JATH_Windspeed_2016_Q3_07_CLPJT07 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT07")
JATH_Windspeed_2016_Q3_07_CLPJT08 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT08")
JATH_Windspeed_2016_Q3_07_CLPJT09 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT09")
JATH_Windspeed_2016_Q3_07_CLPJT10 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT10")
JATH_Windspeed_2016_Q3_07_CLPJT11 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT11")
JATH_Windspeed_2016_Q3_07_CLPJT12 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT12")
JATH_Windspeed_2016_Q3_07_CLPJT13 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT13")
JATH_Windspeed_2016_Q3_07_CLPJT14 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT14")
JATH_Windspeed_2016_Q3_07_CLPJT15 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT15")
JATH_Windspeed_2016_Q3_07_CLPJT16 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT16")
JATH_Windspeed_2016_Q3_07_CLPJT17 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT17")
JATH_Windspeed_2016_Q3_07_CLPJT18 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT18")
JATH_Windspeed_2016_Q3_07_CLPJT19 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT19")
JATH_Windspeed_2016_Q3_07_CLPJT20 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT20")
JATH_Windspeed_2016_Q3_07_CLPJT21 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT21")
JATH_Windspeed_2016_Q3_07_CLPJT22 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT22")
JATH_Windspeed_2016_Q3_07_CLPJT23 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT23")
JATH_Windspeed_2016_Q3_07_CLPJT24 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT24")
JATH_Windspeed_2016_Q3_07_CLPJT25 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT25")
JATH_Windspeed_2016_Q3_07_CLPJT26 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT26")
JATH_Windspeed_2016_Q3_07_CLPJT27 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT27")
JATH_Windspeed_2016_Q3_07_CLPJT28 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT28")
JATH_Windspeed_2016_Q3_07_CLPJT29 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT29")
JATH_Windspeed_2016_Q3_07_CLPJT30 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201607.xlsx", sheet = "CLPJT30")


#n=dim(JATH_Windspeed_2016_Q3_CLPJT01)
#n[1]
wind_data_jath_2016_Q3_07<-cbind(JATH_Windspeed_2016_Q3_07_CLPJT01[3:4408,4],JATH_Windspeed_2016_Q3_07_CLPJT02[3:4408,4],JATH_Windspeed_2016_Q3_07_CLPJT03[3:4408,4],
                                 JATH_Windspeed_2016_Q3_07_CLPJT04[3:4408,4],JATH_Windspeed_2016_Q3_07_CLPJT05[3:4408,4],JATH_Windspeed_2016_Q3_07_CLPJT06[3:4408,4],
                                 JATH_Windspeed_2016_Q3_07_CLPJT07[3:4408,4],JATH_Windspeed_2016_Q3_07_CLPJT08[3:4408,4],JATH_Windspeed_2016_Q3_07_CLPJT09[3:4408,4],
                                 JATH_Windspeed_2016_Q3_07_CLPJT10[3:4408,4], 
                                 JATH_Windspeed_2016_Q3_07_CLPJT11[3:4408,4],JATH_Windspeed_2016_Q3_07_CLPJT12[3:4408,4],JATH_Windspeed_2016_Q3_07_CLPJT13[3:4408,4],
                                 JATH_Windspeed_2016_Q3_07_CLPJT14[3:4408,4],JATH_Windspeed_2016_Q3_07_CLPJT15[3:4408,4],JATH_Windspeed_2016_Q3_07_CLPJT16[3:4408,4],
                                 JATH_Windspeed_2016_Q3_07_CLPJT17[3:4408,4],JATH_Windspeed_2016_Q3_07_CLPJT18[3:4408,4],JATH_Windspeed_2016_Q3_07_CLPJT19[3:4408,4],
                                 JATH_Windspeed_2016_Q3_07_CLPJT20[3:4408,4],
                                 JATH_Windspeed_2016_Q3_07_CLPJT21[3:4408,4],JATH_Windspeed_2016_Q3_07_CLPJT22[3:4408,4],JATH_Windspeed_2016_Q3_07_CLPJT23[3:4408,4],
                                 JATH_Windspeed_2016_Q3_07_CLPJT24[3:4408,4],JATH_Windspeed_2016_Q3_07_CLPJT25[3:4408,4],JATH_Windspeed_2016_Q3_07_CLPJT26[3:4408,4],
                                 JATH_Windspeed_2016_Q3_07_CLPJT27[3:4408,4],JATH_Windspeed_2016_Q3_07_CLPJT28[3:4408,4],JATH_Windspeed_2016_Q3_07_CLPJT29[3:4408,4],
                                 JATH_Windspeed_2016_Q3_07_CLPJT30[3:4408,4])

######### 
JATH_Windspeed_2016_Q3_08_CLPJT01 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT01")
JATH_Windspeed_2016_Q3_08_CLPJT02 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT02")
JATH_Windspeed_2016_Q3_08_CLPJT03 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT03")
JATH_Windspeed_2016_Q3_08_CLPJT04 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT04")
JATH_Windspeed_2016_Q3_08_CLPJT05 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT05")
JATH_Windspeed_2016_Q3_08_CLPJT06 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT06")
JATH_Windspeed_2016_Q3_08_CLPJT07 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT07")
JATH_Windspeed_2016_Q3_08_CLPJT08 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT08")
JATH_Windspeed_2016_Q3_08_CLPJT09 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT09")
JATH_Windspeed_2016_Q3_08_CLPJT10 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT10")
JATH_Windspeed_2016_Q3_08_CLPJT11 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT11")
JATH_Windspeed_2016_Q3_08_CLPJT12 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT12")
JATH_Windspeed_2016_Q3_08_CLPJT13 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT13")
JATH_Windspeed_2016_Q3_08_CLPJT14 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT14")
JATH_Windspeed_2016_Q3_08_CLPJT15 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT15")
JATH_Windspeed_2016_Q3_08_CLPJT16 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT16")
JATH_Windspeed_2016_Q3_08_CLPJT17 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT17")
JATH_Windspeed_2016_Q3_08_CLPJT18 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT18")
JATH_Windspeed_2016_Q3_08_CLPJT19 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT19")
JATH_Windspeed_2016_Q3_08_CLPJT20 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT20")
JATH_Windspeed_2016_Q3_08_CLPJT21 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT21")
JATH_Windspeed_2016_Q3_08_CLPJT22 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT22")
JATH_Windspeed_2016_Q3_08_CLPJT23 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT23")
JATH_Windspeed_2016_Q3_08_CLPJT24 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT24")
JATH_Windspeed_2016_Q3_08_CLPJT25 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT25")
JATH_Windspeed_2016_Q3_08_CLPJT26 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT26")
JATH_Windspeed_2016_Q3_08_CLPJT27 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT27")
JATH_Windspeed_2016_Q3_08_CLPJT28 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT28")
JATH_Windspeed_2016_Q3_08_CLPJT29 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT29")
JATH_Windspeed_2016_Q3_08_CLPJT30 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201608.xlsx", sheet = "CLPJT30")


#n=dim(JATH_Windspeed_2016_Q3_CLPJT01)
#n[1]
n_Q3_08=4194
## JATH_Windspeed_2016_Q3_08_CLPJT01[1:4458,4]
wind_data_jath_2016_Q3_08<-cbind(JATH_Windspeed_2016_Q3_08_CLPJT01[3:n_Q3_08,4],JATH_Windspeed_2016_Q3_08_CLPJT02[3:n_Q3_08,4],JATH_Windspeed_2016_Q3_08_CLPJT03[3:n_Q3_08,4],
                                 JATH_Windspeed_2016_Q3_08_CLPJT04[3:n_Q3_08,4],JATH_Windspeed_2016_Q3_08_CLPJT05[3:n_Q3_08,4],JATH_Windspeed_2016_Q3_08_CLPJT06[3:n_Q3_08,4],
                                 JATH_Windspeed_2016_Q3_08_CLPJT07[3:n_Q3_08,4],JATH_Windspeed_2016_Q3_08_CLPJT08[3:n_Q3_08,4],JATH_Windspeed_2016_Q3_08_CLPJT09[3:n_Q3_08,4],
                                 JATH_Windspeed_2016_Q3_08_CLPJT10[3:n_Q3_08,4], 
                                 JATH_Windspeed_2016_Q3_08_CLPJT11[3:n_Q3_08,4],JATH_Windspeed_2016_Q3_08_CLPJT12[3:n_Q3_08,4],JATH_Windspeed_2016_Q3_08_CLPJT13[3:n_Q3_08,4],
                                 JATH_Windspeed_2016_Q3_08_CLPJT14[3:n_Q3_08,4],JATH_Windspeed_2016_Q3_08_CLPJT15[3:n_Q3_08,4],JATH_Windspeed_2016_Q3_08_CLPJT16[3:n_Q3_08,4],
                                 JATH_Windspeed_2016_Q3_08_CLPJT17[3:n_Q3_08,4],JATH_Windspeed_2016_Q3_08_CLPJT18[3:n_Q3_08,4],JATH_Windspeed_2016_Q3_08_CLPJT19[3:n_Q3_08,4],
                                 JATH_Windspeed_2016_Q3_08_CLPJT20[3:n_Q3_08,4],
                                 JATH_Windspeed_2016_Q3_08_CLPJT21[3:n_Q3_08,4],JATH_Windspeed_2016_Q3_08_CLPJT22[3:n_Q3_08,4],JATH_Windspeed_2016_Q3_08_CLPJT23[3:n_Q3_08,4],
                                 JATH_Windspeed_2016_Q3_08_CLPJT24[3:n_Q3_08,4],JATH_Windspeed_2016_Q3_08_CLPJT25[3:n_Q3_08,4],JATH_Windspeed_2016_Q3_08_CLPJT26[3:n_Q3_08,4],
                                 JATH_Windspeed_2016_Q3_08_CLPJT27[3:n_Q3_08,4],JATH_Windspeed_2016_Q3_08_CLPJT28[3:n_Q3_08,4],JATH_Windspeed_2016_Q3_08_CLPJT29[3:n_Q3_08,4],
                                 JATH_Windspeed_2016_Q3_08_CLPJT30[3:n_Q3_08,4])



######### 
JATH_Windspeed_2016_Q3_09_CLPJT01 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT01")
JATH_Windspeed_2016_Q3_09_CLPJT02 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT02")
JATH_Windspeed_2016_Q3_09_CLPJT03 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT03")
JATH_Windspeed_2016_Q3_09_CLPJT04 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT04")
JATH_Windspeed_2016_Q3_09_CLPJT05 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT05")
JATH_Windspeed_2016_Q3_09_CLPJT06 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT06")
JATH_Windspeed_2016_Q3_09_CLPJT07 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT07")
JATH_Windspeed_2016_Q3_09_CLPJT08 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT08")
JATH_Windspeed_2016_Q3_09_CLPJT09 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT09")
JATH_Windspeed_2016_Q3_09_CLPJT10 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT10")
JATH_Windspeed_2016_Q3_09_CLPJT11 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT11")
JATH_Windspeed_2016_Q3_09_CLPJT12 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT12")
JATH_Windspeed_2016_Q3_09_CLPJT13 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT13")
JATH_Windspeed_2016_Q3_09_CLPJT14 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT14")
JATH_Windspeed_2016_Q3_09_CLPJT15 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT15")
JATH_Windspeed_2016_Q3_09_CLPJT16 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT16")
JATH_Windspeed_2016_Q3_09_CLPJT17 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT17")
JATH_Windspeed_2016_Q3_09_CLPJT18 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT18")
JATH_Windspeed_2016_Q3_09_CLPJT19 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT19")
JATH_Windspeed_2016_Q3_09_CLPJT20 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT20")
JATH_Windspeed_2016_Q3_09_CLPJT21 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT21")
JATH_Windspeed_2016_Q3_09_CLPJT22 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT22")
JATH_Windspeed_2016_Q3_09_CLPJT23 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT22")
JATH_Windspeed_2016_Q3_09_CLPJT24 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT22")
JATH_Windspeed_2016_Q3_09_CLPJT25 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT27")
JATH_Windspeed_2016_Q3_09_CLPJT26 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT27")
JATH_Windspeed_2016_Q3_09_CLPJT27 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT27")
JATH_Windspeed_2016_Q3_09_CLPJT28 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT28")
JATH_Windspeed_2016_Q3_09_CLPJT29 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT29")
JATH_Windspeed_2016_Q3_09_CLPJT30 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q3/201609.xlsx", sheet = "CLPJT30")


#n=dim(JATH_Windspeed_2016_Q3_CLPJT01)
#n[1]
n_Q3_09=4019
wind_data_jath_2016_Q3_09<-cbind(JATH_Windspeed_2016_Q3_09_CLPJT01[3:n_Q3_09,4],JATH_Windspeed_2016_Q3_09_CLPJT02[3:n_Q3_09,4],JATH_Windspeed_2016_Q3_09_CLPJT03[3:n_Q3_09,4],
                                 JATH_Windspeed_2016_Q3_09_CLPJT04[3:n_Q3_09,4],JATH_Windspeed_2016_Q3_09_CLPJT05[3:n_Q3_09,4],JATH_Windspeed_2016_Q3_09_CLPJT06[3:n_Q3_09,4],
                                 JATH_Windspeed_2016_Q3_09_CLPJT07[3:n_Q3_09,4],JATH_Windspeed_2016_Q3_09_CLPJT08[3:n_Q3_09,4],JATH_Windspeed_2016_Q3_09_CLPJT09[3:n_Q3_09,4],
                                 JATH_Windspeed_2016_Q3_09_CLPJT10[3:n_Q3_09,4], 
                                 JATH_Windspeed_2016_Q3_09_CLPJT11[3:n_Q3_09,4],JATH_Windspeed_2016_Q3_09_CLPJT12[3:n_Q3_09,4],JATH_Windspeed_2016_Q3_09_CLPJT13[3:n_Q3_09,4],
                                 JATH_Windspeed_2016_Q3_09_CLPJT14[3:n_Q3_09,4],JATH_Windspeed_2016_Q3_09_CLPJT15[3:n_Q3_09,4],JATH_Windspeed_2016_Q3_09_CLPJT16[3:n_Q3_09,4],
                                 JATH_Windspeed_2016_Q3_09_CLPJT17[3:n_Q3_09,4],JATH_Windspeed_2016_Q3_09_CLPJT18[3:n_Q3_09,4],JATH_Windspeed_2016_Q3_09_CLPJT19[3:n_Q3_09,4],
                                 JATH_Windspeed_2016_Q3_09_CLPJT20[3:n_Q3_09,4],
                                 JATH_Windspeed_2016_Q3_09_CLPJT21[3:n_Q3_09,4],JATH_Windspeed_2016_Q3_09_CLPJT22[3:n_Q3_09,4],JATH_Windspeed_2016_Q3_09_CLPJT23[3:n_Q3_09,4],
                                 JATH_Windspeed_2016_Q3_09_CLPJT24[3:n_Q3_09,4],JATH_Windspeed_2016_Q3_09_CLPJT25[3:n_Q3_09,4],JATH_Windspeed_2016_Q3_09_CLPJT26[3:n_Q3_09,4],
                                 JATH_Windspeed_2016_Q3_09_CLPJT27[3:n_Q3_09,4],JATH_Windspeed_2016_Q3_09_CLPJT28[3:n_Q3_09,4],JATH_Windspeed_2016_Q3_09_CLPJT29[3:n_Q3_09,4],
                                 JATH_Windspeed_2016_Q3_09_CLPJT30[3:n_Q3_09,4])
#####
#rm(list=ls())
JATH_Windspeed_2016_Q4_10_CLPJT01 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT01")
JATH_Windspeed_2016_Q4_10_CLPJT02 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT02")
JATH_Windspeed_2016_Q4_10_CLPJT03 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT03")
JATH_Windspeed_2016_Q4_10_CLPJT04 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT04")
JATH_Windspeed_2016_Q4_10_CLPJT05 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT05")
JATH_Windspeed_2016_Q4_10_CLPJT06 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT06")
JATH_Windspeed_2016_Q4_10_CLPJT07 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT07")
JATH_Windspeed_2016_Q4_10_CLPJT08 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT08")
JATH_Windspeed_2016_Q4_10_CLPJT09 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT09")
JATH_Windspeed_2016_Q4_10_CLPJT10 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT10")
JATH_Windspeed_2016_Q4_10_CLPJT11 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT11")
JATH_Windspeed_2016_Q4_10_CLPJT12 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT12")
JATH_Windspeed_2016_Q4_10_CLPJT13 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT13")
JATH_Windspeed_2016_Q4_10_CLPJT14 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT14")
JATH_Windspeed_2016_Q4_10_CLPJT15 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT15")
JATH_Windspeed_2016_Q4_10_CLPJT16 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT16")
JATH_Windspeed_2016_Q4_10_CLPJT17 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT17")
JATH_Windspeed_2016_Q4_10_CLPJT18 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT18")
JATH_Windspeed_2016_Q4_10_CLPJT19 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT19")
JATH_Windspeed_2016_Q4_10_CLPJT20 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT20")
JATH_Windspeed_2016_Q4_10_CLPJT21 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT21")
JATH_Windspeed_2016_Q4_10_CLPJT22 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT22")
JATH_Windspeed_2016_Q4_10_CLPJT23 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT23")
JATH_Windspeed_2016_Q4_10_CLPJT24 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT24")
JATH_Windspeed_2016_Q4_10_CLPJT25 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT25")
JATH_Windspeed_2016_Q4_10_CLPJT26 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT26")
JATH_Windspeed_2016_Q4_10_CLPJT27 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT27")
JATH_Windspeed_2016_Q4_10_CLPJT28 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT28")
JATH_Windspeed_2016_Q4_10_CLPJT29 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT29")
JATH_Windspeed_2016_Q4_10_CLPJT30 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201610.xlsx", sheet = "CLPJT30")


#n=dim(JATH_Windspeed_2016_Q4_CLPJT01)
#n[1]
wind_data_jath_2016_Q4_10<-cbind(JATH_Windspeed_2016_Q4_10_CLPJT01[3:4408,4],JATH_Windspeed_2016_Q4_10_CLPJT02[3:4408,4],JATH_Windspeed_2016_Q4_10_CLPJT03[3:4408,4],
                                 JATH_Windspeed_2016_Q4_10_CLPJT04[3:4408,4],JATH_Windspeed_2016_Q4_10_CLPJT05[3:4408,4],JATH_Windspeed_2016_Q4_10_CLPJT06[3:4408,4],
                                 JATH_Windspeed_2016_Q4_10_CLPJT07[3:4408,4],JATH_Windspeed_2016_Q4_10_CLPJT08[3:4408,4],JATH_Windspeed_2016_Q4_10_CLPJT09[3:4408,4],
                                 JATH_Windspeed_2016_Q4_10_CLPJT10[3:4408,4], 
                                 JATH_Windspeed_2016_Q4_10_CLPJT11[3:4408,4],JATH_Windspeed_2016_Q4_10_CLPJT12[3:4408,4],JATH_Windspeed_2016_Q4_10_CLPJT13[3:4408,4],
                                 JATH_Windspeed_2016_Q4_10_CLPJT14[3:4408,4],JATH_Windspeed_2016_Q4_10_CLPJT15[3:4408,4],JATH_Windspeed_2016_Q4_10_CLPJT16[3:4408,4],
                                 JATH_Windspeed_2016_Q4_10_CLPJT17[3:4408,4],JATH_Windspeed_2016_Q4_10_CLPJT18[3:4408,4],JATH_Windspeed_2016_Q4_10_CLPJT19[3:4408,4],
                                 JATH_Windspeed_2016_Q4_10_CLPJT20[3:4408,4],
                                 JATH_Windspeed_2016_Q4_10_CLPJT21[3:4408,4],JATH_Windspeed_2016_Q4_10_CLPJT22[3:4408,4],JATH_Windspeed_2016_Q4_10_CLPJT23[3:4408,4],
                                 JATH_Windspeed_2016_Q4_10_CLPJT24[3:4408,4],JATH_Windspeed_2016_Q4_10_CLPJT25[3:4408,4],JATH_Windspeed_2016_Q4_10_CLPJT26[3:4408,4],
                                 JATH_Windspeed_2016_Q4_10_CLPJT27[3:4408,4],JATH_Windspeed_2016_Q4_10_CLPJT28[3:4408,4],JATH_Windspeed_2016_Q4_10_CLPJT29[3:4408,4],
                                 JATH_Windspeed_2016_Q4_10_CLPJT30[3:4408,4])

######### 
JATH_Windspeed_2016_Q4_11_CLPJT01 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT01")
JATH_Windspeed_2016_Q4_11_CLPJT02 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT02")
JATH_Windspeed_2016_Q4_11_CLPJT03 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT03")
JATH_Windspeed_2016_Q4_11_CLPJT04 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT04")
JATH_Windspeed_2016_Q4_11_CLPJT05 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT05")
JATH_Windspeed_2016_Q4_11_CLPJT06 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT06")
JATH_Windspeed_2016_Q4_11_CLPJT07 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT07")
JATH_Windspeed_2016_Q4_11_CLPJT08 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT08")
JATH_Windspeed_2016_Q4_11_CLPJT09 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT09")
JATH_Windspeed_2016_Q4_11_CLPJT10 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT10")
JATH_Windspeed_2016_Q4_11_CLPJT11 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT11")
JATH_Windspeed_2016_Q4_11_CLPJT12 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT12")
JATH_Windspeed_2016_Q4_11_CLPJT13 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT13")
JATH_Windspeed_2016_Q4_11_CLPJT14 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT14")
JATH_Windspeed_2016_Q4_11_CLPJT15 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT15")
JATH_Windspeed_2016_Q4_11_CLPJT16 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT16")
JATH_Windspeed_2016_Q4_11_CLPJT17 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT17")
JATH_Windspeed_2016_Q4_11_CLPJT18 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT18")
JATH_Windspeed_2016_Q4_11_CLPJT19 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT19")
JATH_Windspeed_2016_Q4_11_CLPJT20 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT20")
JATH_Windspeed_2016_Q4_11_CLPJT21 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT21")
JATH_Windspeed_2016_Q4_11_CLPJT22 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT22")
JATH_Windspeed_2016_Q4_11_CLPJT23 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT23")
JATH_Windspeed_2016_Q4_11_CLPJT24 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT24")
JATH_Windspeed_2016_Q4_11_CLPJT25 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT25")
JATH_Windspeed_2016_Q4_11_CLPJT26 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT26")
JATH_Windspeed_2016_Q4_11_CLPJT27 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT27")
JATH_Windspeed_2016_Q4_11_CLPJT28 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT28")
JATH_Windspeed_2016_Q4_11_CLPJT29 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT29")
JATH_Windspeed_2016_Q4_11_CLPJT30 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201611.xlsx", sheet = "CLPJT30")


#n=dim(JATH_Windspeed_2016_Q4_CLPJT01)
#n[1]
n_Q4_11=4194
## JATH_Windspeed_2016_Q4_11_CLPJT01[1:4458,4]
wind_data_jath_2016_Q4_11<-cbind(JATH_Windspeed_2016_Q4_11_CLPJT01[3:n_Q4_11,4],JATH_Windspeed_2016_Q4_11_CLPJT02[3:n_Q4_11,4],JATH_Windspeed_2016_Q4_11_CLPJT03[3:n_Q4_11,4],
                                 JATH_Windspeed_2016_Q4_11_CLPJT04[3:n_Q4_11,4],JATH_Windspeed_2016_Q4_11_CLPJT05[3:n_Q4_11,4],JATH_Windspeed_2016_Q4_11_CLPJT06[3:n_Q4_11,4],
                                 JATH_Windspeed_2016_Q4_11_CLPJT07[3:n_Q4_11,4],JATH_Windspeed_2016_Q4_11_CLPJT08[3:n_Q4_11,4],JATH_Windspeed_2016_Q4_11_CLPJT09[3:n_Q4_11,4],
                                 JATH_Windspeed_2016_Q4_11_CLPJT10[3:n_Q4_11,4], 
                                 JATH_Windspeed_2016_Q4_11_CLPJT11[3:n_Q4_11,4],JATH_Windspeed_2016_Q4_11_CLPJT12[3:n_Q4_11,4],JATH_Windspeed_2016_Q4_11_CLPJT13[3:n_Q4_11,4],
                                 JATH_Windspeed_2016_Q4_11_CLPJT14[3:n_Q4_11,4],JATH_Windspeed_2016_Q4_11_CLPJT15[3:n_Q4_11,4],JATH_Windspeed_2016_Q4_11_CLPJT16[3:n_Q4_11,4],
                                 JATH_Windspeed_2016_Q4_11_CLPJT17[3:n_Q4_11,4],JATH_Windspeed_2016_Q4_11_CLPJT18[3:n_Q4_11,4],JATH_Windspeed_2016_Q4_11_CLPJT19[3:n_Q4_11,4],
                                 JATH_Windspeed_2016_Q4_11_CLPJT20[3:n_Q4_11,4],
                                 JATH_Windspeed_2016_Q4_11_CLPJT21[3:n_Q4_11,4],JATH_Windspeed_2016_Q4_11_CLPJT22[3:n_Q4_11,4],JATH_Windspeed_2016_Q4_11_CLPJT23[3:n_Q4_11,4],
                                 JATH_Windspeed_2016_Q4_11_CLPJT24[3:n_Q4_11,4],JATH_Windspeed_2016_Q4_11_CLPJT25[3:n_Q4_11,4],JATH_Windspeed_2016_Q4_11_CLPJT26[3:n_Q4_11,4],
                                 JATH_Windspeed_2016_Q4_11_CLPJT27[3:n_Q4_11,4],JATH_Windspeed_2016_Q4_11_CLPJT28[3:n_Q4_11,4],JATH_Windspeed_2016_Q4_11_CLPJT29[3:n_Q4_11,4],
                                 JATH_Windspeed_2016_Q4_11_CLPJT30[3:n_Q4_11,4])



######### 
JATH_Windspeed_2016_Q4_12_CLPJT01 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT01")
JATH_Windspeed_2016_Q4_12_CLPJT02 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT02")
JATH_Windspeed_2016_Q4_12_CLPJT03 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT03")
JATH_Windspeed_2016_Q4_12_CLPJT04 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT04")
JATH_Windspeed_2016_Q4_12_CLPJT05 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT05")
JATH_Windspeed_2016_Q4_12_CLPJT06 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT06")
JATH_Windspeed_2016_Q4_12_CLPJT07 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT07")
JATH_Windspeed_2016_Q4_12_CLPJT08 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT08")
JATH_Windspeed_2016_Q4_12_CLPJT09 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT09")
JATH_Windspeed_2016_Q4_12_CLPJT10 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT10")
JATH_Windspeed_2016_Q4_12_CLPJT11 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT11")
JATH_Windspeed_2016_Q4_12_CLPJT12 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT12")
JATH_Windspeed_2016_Q4_12_CLPJT13 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT13")
JATH_Windspeed_2016_Q4_12_CLPJT14 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT14")
JATH_Windspeed_2016_Q4_12_CLPJT15 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT15")
JATH_Windspeed_2016_Q4_12_CLPJT16 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT16")
JATH_Windspeed_2016_Q4_12_CLPJT17 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT17")
JATH_Windspeed_2016_Q4_12_CLPJT18 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT18")
JATH_Windspeed_2016_Q4_12_CLPJT19 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT19")
JATH_Windspeed_2016_Q4_12_CLPJT20 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT20")
JATH_Windspeed_2016_Q4_12_CLPJT21 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT21")
JATH_Windspeed_2016_Q4_12_CLPJT22 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT22")
JATH_Windspeed_2016_Q4_12_CLPJT23 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT23")
JATH_Windspeed_2016_Q4_12_CLPJT24 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT24")
JATH_Windspeed_2016_Q4_12_CLPJT25 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT25")
JATH_Windspeed_2016_Q4_12_CLPJT26 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT26")
JATH_Windspeed_2016_Q4_12_CLPJT27 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT27")
JATH_Windspeed_2016_Q4_12_CLPJT28 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT28")
JATH_Windspeed_2016_Q4_12_CLPJT29 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT29")
JATH_Windspeed_2016_Q4_12_CLPJT30 <- read_excel("/Users/zakari/Desktop/CLP\ data/JATH/2016Q4/201612.xlsx", sheet = "CLPJT30")


#n=dim(JATH_Windspeed_2016_Q4_CLPJT01)
#n[1]
n_Q4_12=4455
wind_data_jath_2016_Q4_12<-cbind(JATH_Windspeed_2016_Q4_12_CLPJT01[3:n_Q4_12,4],JATH_Windspeed_2016_Q4_12_CLPJT02[3:n_Q4_12,4],JATH_Windspeed_2016_Q4_12_CLPJT03[3:n_Q4_12,4],
                                 JATH_Windspeed_2016_Q4_12_CLPJT04[3:n_Q4_12,4],JATH_Windspeed_2016_Q4_12_CLPJT05[3:n_Q4_12,4],JATH_Windspeed_2016_Q4_12_CLPJT06[3:n_Q4_12,4],
                                 JATH_Windspeed_2016_Q4_12_CLPJT07[3:n_Q4_12,4],JATH_Windspeed_2016_Q4_12_CLPJT08[3:n_Q4_12,4],JATH_Windspeed_2016_Q4_12_CLPJT09[3:n_Q4_12,4],
                                 JATH_Windspeed_2016_Q4_12_CLPJT10[3:n_Q4_12,4], 
                                 JATH_Windspeed_2016_Q4_12_CLPJT11[3:n_Q4_12,4],JATH_Windspeed_2016_Q4_12_CLPJT12[3:n_Q4_12,4],JATH_Windspeed_2016_Q4_12_CLPJT13[3:n_Q4_12,4],
                                 JATH_Windspeed_2016_Q4_12_CLPJT14[3:n_Q4_12,4],JATH_Windspeed_2016_Q4_12_CLPJT15[3:n_Q4_12,4],JATH_Windspeed_2016_Q4_12_CLPJT16[3:n_Q4_12,4],
                                 JATH_Windspeed_2016_Q4_12_CLPJT17[3:n_Q4_12,4],JATH_Windspeed_2016_Q4_12_CLPJT18[3:n_Q4_12,4],JATH_Windspeed_2016_Q4_12_CLPJT19[3:n_Q4_12,4],
                                 JATH_Windspeed_2016_Q4_12_CLPJT20[3:n_Q4_12,4],
                                 JATH_Windspeed_2016_Q4_12_CLPJT21[3:n_Q4_12,4],JATH_Windspeed_2016_Q4_12_CLPJT22[3:n_Q4_12,4],JATH_Windspeed_2016_Q4_12_CLPJT23[3:n_Q4_12,4],
                                 JATH_Windspeed_2016_Q4_12_CLPJT24[3:n_Q4_12,4],JATH_Windspeed_2016_Q4_12_CLPJT25[3:n_Q4_12,4],JATH_Windspeed_2016_Q4_12_CLPJT26[3:n_Q4_12,4],
                                 JATH_Windspeed_2016_Q4_12_CLPJT27[3:n_Q4_12,4],JATH_Windspeed_2016_Q4_12_CLPJT28[3:n_Q4_12,4],JATH_Windspeed_2016_Q4_12_CLPJT29[3:n_Q4_12,4],
                                 JATH_Windspeed_2016_Q4_12_CLPJT30[3:n_Q4_12,4])

###

##### 
names(wind_data_jath_2016_Q3_08)=names(wind_data_jath_2016_Q3_09)
f<-rbind(wind_data_jath_2016_Q1_01,wind_data_jath_2016_Q1_02,wind_data_jath_2016_Q1_03,wind_data_jath_2016_Q2_04,
         wind_data_jath_2016_Q2_05,wind_data_jath_2016_Q2_06, wind_data_jath_2016_Q3_07, wind_data_jath_2016_Q3_08,wind_data_jath_2016_Q3_09,
         wind_data_jath_2016_Q4_10,wind_data_jath_2016_Q4_11,wind_data_jath_2016_Q4_12)

wind_2016_jath_data=matrix(0,nrow=51674,ncol=30)

for (i in 1:51674)
{
  for (j in 1:30)
    
  {
    wind_2016_jath_data[i,j]<- as.numeric(f[i,j])
    
  }
}


# f$avg_wind=rowMeans(wind_2016_jath_data, na.rm=TRUE)
# THV_Windspeed_2016$PCTimeStamp<-as.POSIXct(THV_Windspeed_2016$PCTimeStamp)
# f$time<-THV_Windspeed_2016$PCTimeStamp[1:51674]
# #str(all_dates_jath_2016)


### str(THV_2016_time) POSIXct[1:52704]
#JATH_Windspeed_2016=data.frame(cbind(THV_Windspeed_2016$PCTimeStamp[1:51674],wind_2016_jath_data))
#JATH_Windspeed_2017=data.frame(cbind(THV_Windspeed_2017$PCTimeStamp[1:52406],JATH_Windspeed_2017_data))
Jath_2016_time=THV_Windspeed_2016$PCTimeStamp
Jath_2017_time=THV_Windspeed_2017$PCTimeStamp
JATH_Windspeed_2016=data.frame(PCTimeStamp=c(Jath_2016_time[1:51674]),wind_2016_jath_data)
JATH_Windspeed_2017=data.frame(PCTimeStamp=c(Jath_2017_time[1:52406]),JATH_Windspeed_2017_data)



JATH_data=rbind(JATH_Windspeed_2016,JATH_Windspeed_2017)
save(JATH_data,file="10min_wind_data_jath.Rda")

JATH_data[is.na(JATH_data)] <- -0.009999
write.table(JATH_data, file = "winddata_JATH_missing0.009999.txt", sep = "\t",
            row.names = FALSE,col.names = names(JATH_data))

avg_ws_2016=rowMeans(wind_2016_jath_data, na.rm = TRUE)
avg_ws_2017=rowMeans(JATH_Windspeed_2017_data, na.rm = TRUE)
#JATH_2016=data.frame(cbind(f$time,f$avg_wind))
JATH_Windspeed_2016_daily_summary <- JATH_Windspeed_2016 %>%
  mutate(time = format(THV_Windspeed_2016$PCTimeStamp[1:51674], "%D"))%>%
  group_by(time)%>%
  summarize(daily_wind=mean(avg_ws_2016, na.rm=TRUE))
JATH_Windspeed_2017_daily_summary <- JATH_Windspeed_2017 %>%
  mutate(time = format(THV_Windspeed_2017$PCTimeStamp[1:52406], "%D"))%>%
  group_by(time)%>%
  summarize(daily_wind=mean(avg_ws_2017, na.rm=TRUE))


daily_wind_data_jath<-rbind(JATH_Windspeed_2016_daily_summary,JATH_Windspeed_2017_daily_summary)
# 
dates_jath <- seq(from = as.Date("2016-01-01"),
                 to = as.Date("2017-12-31"),
                 by = "days")
 daily_wind_data_jath$time<-dates_jath[1:723]
 save(daily_wind_data_jath,file="daily_wind_data_jath.Rda")
## TEST monthly
 
 JATH_Windspeed_2016_monthly_summary <- JATH_Windspeed_2016_daily_summary %>%
   mutate(time= months(JATH_Windspeed_2016_daily_summary$time))%>%
   group_by(time)%>%
   summarize(monthly_wind=mean(JATH_Windspeed_2016_daily_summary$daily_wind, na.rm=TRUE))
 JATH_Windspeed_2017_monthly_summary <- JATH_Windspeed_2017_daily_summary %>%
   mutate(time= months(JATH_Windspeed_2017_daily_summary$time))%>%
   group_by(time)%>%
   summarize(monthly_wind=mean(JATH_Windspeed_2017_daily_summary$daily_wind, na.rm=TRUE))

monthly_wind_data_jath<-rbind(JATH_Windspeed_2016_monthly_summary,JATH_Windspeed_2017_monthly_summary)
months_jath <- seq(from = as.Date("2016-01-01"),
                  to = as.Date("2017-12-31"),
                  by = "months")
monthly_wind_data_jath$time<-months_jath

save(monthly_wind_data_jath,file="monthly_wind_data_jath.Rda")