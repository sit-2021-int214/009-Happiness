library(dplyr)
library(readr)

# Explore
happiness <- read_csv("https://raw.githubusercontent.com/sit-2021-int214/009-Happiness/main/Happiness-2019.csv")
View(happiness)

# Observe
happiness <- as_tibble(happiness)
glimpse(happiness)

# Data Cleaning
happiness %>% filter(duplicated(happiness)) 
happiness %>% count(duplicated(happiness))

happiness %>% count(is.na(happiness$`Overall rank`))
happiness %>% count(is.na(happiness$`Country or region`))
happiness %>% count(is.na(happiness$Score))
happiness %>% count(is.na(happiness$`GDP per capita`))
happiness %>% count(is.na(happiness$`Social support`))
happiness %>% count(is.na(happiness$`Healthy life expectancy`))
happiness %>% count(is.na(happiness$`Freedom to make life choices`))
happiness %>% count(is.na(happiness$Generosity))
happiness %>% count(is.na(happiness$Generosity))

# Exploratory Data Analysis
#1.

#2.

#3.

#4.

#5.