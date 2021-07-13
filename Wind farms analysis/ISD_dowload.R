library(rgdal)
install.packages("rnoaa")
library(rnoaa)
require(rnoaa)
require(lubridate)
require(dplyr)
library(raster)
library(XML) 

#ncdc(datasetid = 'PRECIP_HLY', locationid = 'ZIP:28801', datatypeid = 'HPCP', limit = 5, token =  "aGsMuNfEQjXRDjiOVPBkWcHsKvSyBmcQ")
options(noaakey = "aGsMuNfEQjXRDjiOVPBkWcHsKvSyBmcQ")
# Station list here = ftp://ftp.ncdc.noaa.gov/pub/data/noaa/isd-history.txt
ncdc_locs(locationcategoryid='CNTRY', sortfield='id', sortorder='asc',limit =100)
# FOR INDIA: 89  1901-01-01 2020-01-31                             India       1.0000 FIPS:IN
# 
ncdc_locs_cats(datasetid='GHCND')
#Get info on a station by specifying a dataset, locationtype, location, and station
a=ncdc_stations(datasetid='GHCND', locationid='FIPS:IN')
#Get data category data and metadata
b=ncdc_datacats(datasetid='GHCND',locationid='FIPS:IN')
c=ncdc_datasets(locationid='IN001031400')
IN_stations_id=a$data$id ## Stations ids in India
# Searching for data
out_TAVG=list()
out_TMAX=list()
out_TMIN=list()
out_PRCP=list()
out_AWDR=list()
out_AWND=list()

for(i in c(IN_stations_id)) 
{
  temp_station_id=i
  print(temp_station_id)
  ncdc_datacats(locationid = temp_station_id)
  #AWND = Average daily wind speed (tenths of meters per second) # datacategoryid='AWND'
  out_AWND<- ncdc(datasetid='GHCND', stationid=IN_stations_id[25], datatypeid ='TAVG', startdate = '1980-01-01', enddate = '1981-01-01')
  #AWDR = Average daily wind direction (degrees)
  out_AWDR[temp_station_id]<- ncdc(datasetid='GHCND', stationid=temp_station_id, datacategoryid='AWDR', startdate = '1980-01-01', enddate = '1981-01-01')
  out_TAVG[temp_station_id]<- ncdc(datasetid='GHCND', stationid=temp_station_id, datacategoryid='TAVG', startdate = '1980-01-01', enddate = '1981-01-01')
  out_TMAX[temp_station_id]<- ncdc(datasetid='GHCND', stationid=temp_station_id, datacategoryid='TMAX', startdate = '1980-01-01', enddate = '1981-01-01')
  out_TMIN[temp_station_id]<- ncdc(datasetid='GHCND', stationid=temp_station_id, datacategoryid='TMIN', startdate = '1980-01-01', enddate = '1981-01-01')
  out_PRCP[temp_station_id]<- ncdc(datasetid='GHCND', stationid=temp_station_id, datacategoryid='PRCP', startdate = '1980-01-01', enddate = '1981-01-01')
  
}
ncdc_plot(out_AWND, breaks="1 month", dateformat="%d/%m")
#			"name": "Wind", "id": "WIND"
## get data for multiple stations
# St. Petersburg, FL station 
res1 <- isd(usaf="997353", wban="99999", year=2016)
# Columbia Metropolitan Airport
res2 <- isd(usaf="723100", wban="13883", year=2016)

## combine data from the two cities
res_all <- rbind(res1, res2)

## combine date and time into a new column
# having date and time together is advantegous
res_all$date_time <- ymd_hm(
  sprintf("%s %s", as.character(res_all$date), res_all$time)
)
## remove 999, which is for data point not available
res_all <- res_all %>% filter(temperature < 900)

### subset to date range (15 days moreless)
date1 <- as.Date("2016-07-01")
date2 <- as.Date("2016-07-15")
res_all <- res_all[res_all$date >= date1 & res_all$date <= date2,]

coords.fwt <- read.fwf("ftp://ftp.ncdc.noaa.gov/pub/data/gsod/isd-history.txt",widths=c(6,1,5,1,38,7,1,8,9,8,1,8),sep=";",skip=21,fill=T)

coords <- data.frame(ID=paste(as.factor(coords.fwt[,1])),WBAN=paste(as.factor(coords.fwt[,3])),Lat=as.numeric(paste(coords.fwt$V6)),Lon=as.numeric(paste(coords.fwt$V8)))
#Download Measurements
year = 2013
download.file(paste("ftp://ftp.ncdc.noaa.gov/pub/data/gsod/",year,"/gsod_",year,".tar",sep=""),destfile=paste(getwd(),"/Data/","gsod_2013.tar",sep=""),method="auto",mode="wb")

#Extract Measurements
dir.create(paste(getwd(),"/Data/Files",sep=""))
untar(paste(getwd(),"/Data/","gsod_2013.tar",sep=""),exdir=paste(getwd(),"/Data/Files",sep=""))
weather <- read.dly(system.file("/Users/zakari/Downloads/", "IN005090100.dly", package = "VFS"))
install.packages("remotes")
remotes::install_github("rwright88/ghcn")

ghcn_read_file("/Users/zakari/Downloads/IN005090100.dly")

