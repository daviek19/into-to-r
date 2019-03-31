# install  lubridate 
#install.packages("lubridate")
#install.packages("dplyr")

#use dplyr lib
library(dplyr)
library(lubridate)

#set the working dir where flight data is
setwd("C:/workspace/data science/R")


#Load the data set (FlightDelays.csv),
flight_data <-  read.csv("FlightData.csv",header = TRUE,stringsAsFactors = FALSE)
print(flight_data)


###Mutate the last field and call it FlightDayOfWeek
flight_data <- flight_data %>% mutate(
  FlightPosix = dmy(flight_data$FlightDate),
  FlightDayOfWeek = wday(FlightPosix,label=TRUE,abbr = TRUE)
)


#Question
#a. Find the number of flights on Sundays for destination Atlanta = 683
sunday_atl_flights <-  flight_data %>% filter(FlightDayOfWeek == "Sun" & Dest == "ATL")

sunday_atl_flights_count <-   count(sunday_atl_flights)
print(sunday_atl_flights_count)

#Question
#b. Find the number of flights on Sundays for all cities
all_sunday_flights <-  flight_data %>% filter(FlightDayOfWeek == "Sun") %>% select(Dest)
all_sunday_flights_grouping <-  group_by(all_sunday_flights,Dest) %>% summarise(n = n())
all_sunday_flights_grouping 

#sum of all counts = 4015
all_sunday_flights_count <- sum(all_sunday_flights_grouping$n)
all_sunday_flights_count
