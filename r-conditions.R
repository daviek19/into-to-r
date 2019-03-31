#use dplyr lib
library(dplyr)


nested <- 
  data.frame(
    "Name"     = c("Juliet","Mike","Betty"),
    "Location" =c ("Kericho","Nyeri","Vihiga")
  )

nested

mutated_nested <- nested %>% 
  mutate(FN=ifelse(Name == "Juliet","J",
                   ifelse(Name=="Mike","M","B")))
mutated_nested