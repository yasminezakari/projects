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
#library("readr")
#rm(list=ls())
tejuva_file_name="/Users/zakari/Desktop/Portfolio_R/data/Windfarms/Tejuva/Tejuva.xlsx"
TJV_Windspeed_2015 <- read_excel(tejuva_file_name, sheet = "2015")
TJV_Windspeed_2016 <- read_excel(tejuva_file_name, sheet = "2016")
TJV_Windspeed_2017 <- read_excel(tejuva_file_name, sheet = "2017")

TJV_Windspeed_2015$Date<-as.POSIXct(TJV_Windspeed_2015$Date)
TJV_Windspeed_2016$Date<-as.POSIXct(TJV_Windspeed_2016$Date)
TJV_Windspeed_2017$Date<-as.POSIXct(TJV_Windspeed_2017$Date)
wind_data_TJV<-rbind(TJV_Windspeed_2015,TJV_Windspeed_2016,TJV_Windspeed_2017)




dates_TJV <- seq(from = as.Date("2015-09-01"), 
                 to = as.Date("2017-12-31"), 
                 by = "days")
wind_data_TJV$time<-dates_TJV
names(wind_data_TJV)[4]="TotWFGenkWh"
wind_data_TJV=data.frame(wind_data_TJV$time,wind_data_TJV$TotWFGenkWh)




save(wind_data_TJV,file="daily_wind_data_tejuva.Rda")
write.table(wind_data_TJV, file = "wind_and_power_data_TEJUVA.txt", sep = "\t",
            row.names = FALSE,col.names = names(wind_data_TJV))

names(TJV_Windspeed_2015)[5]="avg_ws"
wind_data_TJV_2015=data.frame(TJV_Windspeed_2015$Date,TJV_Windspeed_2015$avg_ws)
TJV_Windspeed_monthly_summary_2015 <- wind_data_TJV_2015 %>%
  mutate(time= months(wind_data_TJV_2015$TJV_Windspeed_2015.Date))%>%
  group_by(time)%>%
  summarize(monthly_wind=mean(wind_data_TJV_2015$TJV_Windspeed_2015.avg_ws, na.rm=TRUE))

names(TJV_Windspeed_2016)[5]="avg_ws"
wind_data_TJV_2016=data.frame(TJV_Windspeed_2016$Date,TJV_Windspeed_2016$avg_ws)
TJV_Windspeed_monthly_summary_2016 <- wind_data_TJV_2016 %>%
  mutate(time= months(wind_data_TJV_2016$TJV_Windspeed_2016.Date))%>%
  group_by(time)%>%
  summarize(monthly_wind=mean(wind_data_TJV_2016$TJV_Windspeed_2016.avg_ws, na.rm=TRUE))

names(TJV_Windspeed_2017)[5]="avg_ws"
wind_data_TJV_2017=data.frame(TJV_Windspeed_2017$Date,TJV_Windspeed_2017$avg_ws)
TJV_Windspeed_monthly_summary_2017 <- wind_data_TJV_2017 %>%
  mutate(time= months(wind_data_TJV_2017$TJV_Windspeed_2017.Date))%>%
  group_by(time)%>%
  summarize(monthly_wind=mean(wind_data_TJV_2017$TJV_Windspeed_2017.avg_ws, na.rm=TRUE))

TJV_Windspeed_monthly_summary=rbind(TJV_Windspeed_monthly_summary_2015,TJV_Windspeed_monthly_summary_2016,TJV_Windspeed_monthly_summary_2017)
save(TJV_Windspeed_monthly_summary,file="monthly_wind_data_tejuva.Rda")
# # ## TEJUVA COORDINATES
# ##Latitude: 26?? 54' 45.9"
# ###Longitude: 70?? 54' 51.7"
# # # Geodetic system: WGS84
# # # https://www.thewindpower.net/windfarm_en_10749_theni-i.php
# # ##
