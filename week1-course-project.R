# Exploratory Data Analysis
# Week 1 - Course Project

library(dplyr)
library(lubridate)

setwd("~/Documents/coursera/exploratory-data-anlysis/ExData_Plotting1")

url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
file = "household_power_consumption.zip"
txt = "household_power_consumption.txt"

downloadData <- function() {
        download.file(url=url, destfile=file)

        unzip(file)
}

loadData <- function() {
        if( !file.exists(txt) ) {
                downloadData()
        }
        
        data <- read.csv(txt,sep=";",stringsAsFactors = FALSE, na.strings="?" ) %>%
                rename(date=Date, time=Time) %>%
                mutate(datetime = dmy_hms(paste(date,time), tz=Sys.timezone())) %>%
                dplyr::filter(datetime >= "2007-02-01" & datetime < "2007-02-03")
        
        data
}
