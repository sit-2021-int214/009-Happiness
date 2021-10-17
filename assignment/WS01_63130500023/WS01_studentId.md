# Workshop 01 EDA: SAT Scores dataset

Data set is paralympic_teams ("https://githubraw.com/kim25450/csv/main/paralympic-teams.csv")

**Created by Chisanucha Somboonwanna (ID: 63130500023)**

### My Step
1. Install and loading Library and dataset
2. Check data cleaning 
3. Define a question

## Define a question

1. How many observation of this dataset (before cleaning) ?
2. Are there duplicate data sets ? (If have duplicate data, list the data that duplicate)
3. How many distinct school in this dataset ? (Know after drop duplicate data)
4. What is min, max, average, quartile of each part in SAT ?
5. What is min, max, average, quartile of total score in SAT ?
6. Which school is get highest SAT score ?

Can add more question ....

## Step 1 : Install and loading Library and dataset

# Dataset
```
paralympic_teams <- read.csv("https://githubraw.com/kim25450/csv/main/paralympic-teams.csv")
```

# Install package 
stringr => เอาไว้ใช้ในการ เช่นการลบ <br>
dplyr => เอาไว้ใช้เขียน statement ได้ง่ายชึ้น<br>
DescTools => เอาไว้หา Mode<br>
assertive => เอาไว้เช็ค type 
```
install.packages("")
```
# Library
```
library(stringr) <br>
library(dplyr)  <br>
library(DescTools)  <br>
library(assertive) 

```
## Step 2: Check data cleaning 

##เช็คว่ามีค่า NA หรือไม่ ใช้คำสั่ง  
```
is.na
```
##เช็ค type ของแต่ละ column
```
paralympic_teams$Team %>% is.character()
paralympic_teams$Country %>% is.character()
paralympic_teams$CountryCode %>% is.character()
paralympic_teams$Sport %>% is.character()
paralympic_teams$Sport.code %>% is.character()
paralympic_teams$Event %>% is.character()
```
## Step 3 : Define questions
## Check number of data set by list value each column
```
paralympic_teams$Team %>% factor() %>% table()
paralympic_teams$Country %>% factor() %>% table()
paralympic_teams$CountryCode %>% factor() %>% table()
paralympic_teams$Sport %>% factor() %>% table()
paralympic_teams$Sport.code %>% factor() %>% table()
paralympic_teams$Event %>% factor() %>% table()
```
## what is country that height content of Men and Woman and Men and How must differ?
```
modeOfParalympic <- paralympic_teams$Country %>% Mode()

Men <- paralympic_teams %>%  select(Country , Event) %>% filter(Event == "Men" ) %>% filter(Country == modeOfParalympic)

woman <- paralympic_teams %>% select(Country , Event)%>% filter(Event == "Women" ) %>% filter(Country == modeOfParalympic)

count(Men) - count(woman)
```
## What is name sport to most ?
```
paralympic_teams$Sport %>% Mode() %>% table()
```
#THANK YOU

