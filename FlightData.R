# install  lubridate 
#install.packages("lubridate")

#use dplyr lib
library(dplyr)
library(lubridate)

#set the working dir where flight data is
setwd("C:/Users/DMKAMAU/Desktop/data science/R/dplyr")


#Load the data set (FlightDelays.csv),
flight_data <-  read.csv("FlightData.csv",header = TRUE,stringsAsFactors = FALSE)
print(flight_data)


###Mutate the last field and call it Year,Month,Day
flight_data <- flight_data %>% mutate(FlightAsFullDate = dmy(flight_data$FlightDate),
                                                             FlightYear = year(flight_data$FlightDate),
                                                             FlightMonth = month(flight_data$FlightDate),
                                                             FlightDay = day(flight_data$FlightDate)
                                    )
)

flight_date_df <-  select(flight_data,FlightAsFullDate)
str(head(flight_date_df,1))

