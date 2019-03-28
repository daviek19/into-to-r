
library(dplyr)

##Creating a dataframe 
Name<-c("Shelmith","Steve","Mike","Kyalo","Victor","Dennis","Tabitha","Betty","John","Cindy","Mukundi","Kimberly","Edward","Juliet")
Name

County<-c("Nyeri","Homabay","Nyeri","Makueni","Kampala","Meru","Kiambu","Vihiga","Kiambu","Machakos","Nakuru"," Makueni","Kiambu","Kericho")
County

Gender<-c("Female","Male","Male","Male","Male","Male","Female","Female","Male","Female","Male","Female","Male","Female")
Gender

Salary<-c(10000,27000,15000,82000,64500,75000,37000,99999,50000,70000,99000,80000,10000,20000)
Salary 

##Payroll is the name of the data set that will consist the number of items on the frame
Payroll<-data.frame(Name,County,Gender,Salary)
Payroll



############# Filter function in dplyr ############# 

#using base r pacckage
Nyeri_county <- Payroll [Payroll$County == "Nyeri" , ]
Nyeri_county



Nyeri_county2 <- Payroll %>% filter(County == "Nyeri")
Nyeri_county2




############# Select function in dplyr #############
NewData <- Nyeri_county2 %>% select(Name,Gender,Salary)
NewData

#QUESTION
#Generate a dataset that contains the name of people and the counties of people paid 70k and above
Paid70Above <- Payroll %>% filter(Salary >= 70000) %>% select(Name,County,Salary)
Paid70Above

Paid70AboveFrmNyeri <- Payroll %>% filter(County == "Nyeri" & Salary > 10000) %>% select(Name,County,Salary)
Paid70AboveFrmNyeri

#Q
#Generate a dataset of all females who earn 50k and above
Females50kAbove <- Payroll %>% filter(Gender == "Female" & Salary >= 50000)  %>% select(Name,County,Salary)
Females50kAbove



############# Mutate function in dplyr ############# 
#used to generate new variables.
#TODO















