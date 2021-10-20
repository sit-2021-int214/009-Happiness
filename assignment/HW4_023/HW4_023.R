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

#2 want to know product that most popular and show every columns ?
exam2 <- superstore %>% filter(Product.Name == max(Product.Name)) 
View(exam2)

#3 Want to know which class of submissions you choose the most and how it affects the price of the product?
exam3 <-superstore %>% select(Ship.Mode , Sales) %>% arrange(desc(Sales))
View(exam3)

#4 Want to know which year is the most shipment in 2018 and 2015?
exam4 <- superstore %>% filter( 2018 == format(as.Date(Ship.Date , format = "%d/%m/%Y"),"%Y")) %>% count()
exam4.1 <- superstore %>% filter( 2015 == format(as.Date(Ship.Date , format = "%d/%m/%Y"),"%Y")) %>% count()
View(exam4)  
View(exam4.1)
                                