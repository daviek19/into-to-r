
###Question 1:
#Create a data frame named customer_details, with 3 rows and 4 columns
customer_details <- 
  data.frame(
    "Name"=c("James","Irene","Khalid"), 
    "Age"=c(25,30,35),
    "Sales" = c(600,400,200),
    "Month" = c("February","February","February")
  );

customer_details




###Question 2:
#a) Create a list called Names, include following attributes in this list:
#   Last Name: Potter, Riddle, Dumbledore
#   First Name: Harry, Tom, Albus
#   Age: 18,50,120
#   Profession: Student, Magician, Headmaster

last_names  <- c("Potter","Riddle","Dumbledore")
first_names <- c("Harry","Tom","Albus")
age         <- c(18,50,120)
profession <- c("Student","Magician","Headmaster")

#create the list from the vector attributes.
names <- list(last_names,first_names,age,profession)
names

#confirm the type of names is list
class(names)

#b) How will you display all the values in attribute Last Name?
last_name_view <-  names[1]
last_name_view

#c) How will you display the 3rd element of attribute Age?
third_age <- names[[3]][3]
third_age





###Question 3:
#a) Load the package ggplot2 into the workspace
install.packages("ggplot2")

library(ggplot2)






