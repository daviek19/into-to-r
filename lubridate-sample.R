# install  lubridate 
install.packages("lubridate")

#use dplyr lib
library(dplyr)
library(lubridate)

#lubridate::as_datetime(flight_data$FlightDate)
#date format examples
leo <- "28-03-2019 18:3620"
str(leo)

leo2 <- dmy_hms(leo)
print(leo2)
str(leo2)

leo2_day <- day(leo2)
leo2_day

leo_month <- month(leo,label = TRUE,abbr = FALSE)
leo_month

leowday <- wday(leo,label=TRUE,abbr = TRUE)
leowday

leo_year <- year(leo)
leo_year

leo_dmy_hms <-  dmy_hms(leo)
leo_dmy_hms



#set the working dir where flight data is
setwd("C:/Users/DMKAMAU/Desktop/data science/R/dplyr")


#Load the data set (FlightDelays.csv),
flight_data <-  read.csv("FlightData.csv")
print(flight_data)

#flight_data$FlightDate <- dmy(flight_data$FlightDate)
#flight_data <- flight_data %>% mutate(Year = )


