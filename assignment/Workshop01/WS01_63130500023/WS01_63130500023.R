# Install package 
paralympic_teams <- read.csv("https://githubraw.com/kim25450/csv/main/paralympic-teams.csv")
# Library
install.packages("stringr")
install.packages("dplyr ")
install.packages("DescTools ")
install.packages("assertive ")

#library
library(stringr)
library(dplyr)
library(DescTools)
library(assertive)

#data cleaning
## Check value in data that has value null ?
paralympic_teams %>% is.na() # check logical
## OR 
paralympic_teams %>% na.omit() # show value by no value null


##Check data type of each data
paralympic_teams$Team %>% is.character()
paralympic_teams$Country %>% is.character()
paralympic_teams$CountryCode %>% is.character()
paralympic_teams$Sport %>% is.character()
paralympic_teams$Sport.code %>% is.character()
paralympic_teams$Event %>% is.character()

## Check number of data set by list value each column
paralympic_teams$Team %>% factor() %>% table()
paralympic_teams$Country %>% factor() %>% table()
paralympic_teams$CountryCode %>% factor() %>% table()
paralympic_teams$Sport %>% factor() %>% table()
paralympic_teams$Sport.code %>% factor() %>% table()
paralympic_teams$Event %>% factor() %>% table()

# what is country that height content of Men and Woman and Men and How must differ?

modeOfParalympic <- paralympic_teams$Country %>% Mode()

Men <- paralympic_teams %>%  select(Country , Event) %>% filter(Event == "Men" ) %>% filter(Country == modeOfParalympic)

woman <- paralympic_teams %>% select(Country , Event)%>% filter(Event == "Women" ) %>% filter(Country == modeOfParalympic)

count(Men) - count(woman)

View(differ)
View(Men)
View(woman)

## What is name sport to most ?
paralympic_teams$Sport %>% Mode() %>% table()
