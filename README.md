# 009-Happiness

Original Datasets from: [Happiness.csv](https://www.kaggle.com/unsdsn/world-happiness?select=2019.csv)

### About's Products Datasets

## Overview
  เป็นการวิเคราะห์ข้อมูลเชิงสถิติของแบบสำรวจสถานะค่าความสุขของแต่ละประเทศทั่วโลกในปี 2019 โดยนำแบบสำรวจที่ได้จาก Kaggle มา cleaning และวิเคราะห์โดยใช้โปรแกรมภาษา R นอกจากนี้ยังมีการนำข้อมูลที่ได้มาวิเคราะห์และหาความสัมพันธ์พร้อมกับตั้งสมมติฐานของข้อมูล

### Steps

1. Define a question
2. Loading dataset from [Happiness_original.csv](https://www.kaggle.com/unsdsn/world-happiness?select=2019.csv) and assign variable named `happiness`
3. Observe the data
   - How many observation?
   - List variable name
4. Data Cleaning
   - checking the types of values
   - checking duplicate data
   - checking NA value
5. Exploratory Data Analysis

### Define a question
1. อยากทราบว่าประเทศไหนได้คะแนนสูงสุดในแต่ละด้านของข้อมูล และได้เท่าไหร่?
2. อยากทราบว่ามีกี่ประเทศที่มีคะแนนรวมสูงกว่าค่าเฉลี่ย ประเทศอะไรบ้าง?
3. อยากทราบว่าประเทศที่มีความสุขมากที่สุดและประเทศที่มีความสุขน้อยที่สุด มีปัจจัยที่แตกต่างกันอย่างไร?
4. อยากทราบว่าคะแนน Perceptions of corruption มีผลต่อความสุขของคนในประเทศขนาดไหน?
5. อยากทราบว่ารายได้มีผลต่อความสุขจริงหรือไม่?

### Library
```{R}
library(dplyr)
library(readr)
```

### Explore
```{R}
happiness <- read_csv("https://raw.githubusercontent.com/sit-2021-int214/009-Happiness/main/Happiness-2019.csv")
View(happiness)
```

### Observe
```{R}
happiness <- as_tibble(happiness)
glimpse(happiness)
View(happiness)
```

### Data Cleaning
```{R}
glimpse(happiness)

happiness %>% filter(duplicated(happiness)) 
happiness %>% count(duplicated(happiness))

happiness <- happiness %>% rename(Rank = `Overall rank`)
happiness <- happiness %>% rename(Country = `Country or region`)
happiness <- happiness %>% rename(GDP = `GDP per capita`)
happiness <- happiness %>% rename(SocialSupport = `Social support`)
happiness <- happiness %>% rename(Healthy = `Healthy life expectancy`)
happiness <- happiness %>% rename(Freedom = `Freedom to make life choices`)
happiness <- happiness %>% rename(TrustGov = `Perceptions of corruption`)

happiness %>% count(is.na(Rank))
happiness %>% count(is.na(Country))
happiness %>% count(is.na(Score))
happiness %>% count(is.na(GDP))
happiness %>% count(is.na(SocialSupport))
happiness %>% count(is.na(Healthy))
happiness %>% count(is.na(Freedom))
happiness %>% count(is.na(Generosity))
happiness %>% count(is.na(TrustGov))

write_csv(happiness,file = "./happiness_clean.csv")
```

### Exploratory Data Analysis
1. อยากทราบว่าประเทศไหนได้คะแนนสูงสุดในแต่ละด้านของข้อมูล และได้เท่าไหร่?
```{R}
happiness %>% dplyr::select(Country, GDP) %>% filter(GDP == max(GDP))
happiness %>% dplyr::select(Country, SocialSupport) %>% filter(SocialSupport == max(SocialSupport))
happiness %>% dplyr::select(Country, Healthy) %>% filter(Healthy == max(Healthy))
happiness %>% dplyr::select(Country, Freedom) %>% filter(Freedom == max(Freedom))
happiness %>% dplyr::select(Country, Generosity) %>% filter(Generosity == max(Generosity))
happiness %>% dplyr::select(Country, TrustGov) %>% filter(TrustGov == max(TrustGov))
```
#2. อยากทราบว่ามีกี่ประเทศที่มีคะแนนรวมสูงกว่าค่าเฉลี่ย ประเทศอะไรบ้าง?
```{R}
num <- happiness %>% count(Score > mean(Score))
View(num)

list <- happiness %>% filter(Score > mean(Score))
View(list)
```
3. อยากทราบว่าประเทศที่มีความสุขมากที่สุดและประเทศที่มีความสุขน้อยที่สุด มีปัจจัยที่แตกต่างกันอย่างไร?
```{R}
minVSmax <- happiness %>% filter(Score == max(happiness$Score) | Score == min(happiness$Score))
View(minVSmax)
```
4. อยากทราบว่าคะแนน Perceptions of corruption มีผลต่อความสุขของคนในประเทศขนาดไหน?
```{R}
PoC <- happiness %>% dplyr::select(`Perceptions of corruption`, Score, `Overall rank`) %>% arrange(desc(`Perceptions of corruption`))
View(PoC)
```
5. อยากทราบว่ารายได้มีผลต่อความสุขจริงหรือไม่?
```{R}
gdp <- happiness %>% dplyr::select(`GDP per capita`, Score, `Overall rank`) %>% arrange(desc(`GDP per capita`))
View(gdp)
```

### Tools

- R Language
- R Studio Desktop

## Table of Contents

1. [Exploratory Data Analysis](./01_explore.md)
2. [Data Visualization]()

## Resources

### Important Files in Repository

- [Happiness_Analysis](./Happiness_Analysis.R) : Exploratory Data Analysis
- [Happiness_original.csv](https://www.kaggle.com/unsdsn/world-happiness?select=2019.csv): Original Dataset
- [Happiness_clean.csv](./happiness_clean.csv): Original Dataset

### References

https://github.com/safesit23/INT214-Statistics/blob/main/workshop/Summary.md

## About Us

งานนี้เป็นส่วนของวิชา INT214 Statistics for Information technology <br/> ภาคเรียนที่ 1 ปีการศึกษา 2564 คณะเทคโนโลยีสารสนเทศ มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี

### Team: อยากกรีดร้องงงง!!!!

1. StudentID: 63130500023 ชิษณุชา สมบูรณ์วรรณะ
2. StudentID: 63130500049 ธนพัฒน์ ไตรรัตน์พนาสันต์
3. StudentID: 63130500058 ธาราดล เผือกเอี่ยม
4. StudentID: 63130500059 ธิติ อึ๊งเจริญ
5. StudentID: 63130500077 ปภาดา เขียวฉอ้อน

### Instructor

- ATCHARA TRAN-U-RAIKUL
- JATAWAT XIE (Git: [safesit23](https://github.com/safesit23))
