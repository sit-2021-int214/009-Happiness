#install package
install.packages("dplyr")
install.packages("ggplot2")
library(dplyr)
library(ggplot2)
#read data set
superstore  <- read.csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/superstore_sales.csv")
View(superstore)

#PartA

#Defind  6 question 

#1 Want to know if there are the most shipments between the Home office and Corporate?
exam1 <- superstore %>% filter(Segment == 'Home Office' | Segment == 'Corporate' ) %>% count(Segment)
View(exam1)

#2 want to know product that most popular and show every columns
exam2 <- superstore %>% filter(Product.Name == max(Product.Name)) 
View(exam2)
