# 009-Happiness

Original Datasets from: [Happiness.csv](https://www.kaggle.com/unsdsn/world-happiness?select=2019.csv)

### About's Products Datasets

## Overview
1. อยากทราบปัจจัยที่ส่งผลต่อความสุขของคนในประเทศ
2.. อยากทราบประเทศที่มีความสุขมากที่สุด

### Steps

1. Define a question
2. Loading dataset from [Happiness_original.csv](https://www.kaggle.com/unsdsn/world-happiness?select=2019.csv) and assign variable named `happiness`
3. Observe the data
   - How many observation?
   - List variable name
4. Data Cleaning and Data Transformation
   - check duplicate data
   - check NA value
5. Exploratory Data Analysis

### Define a question
1.
2.
3.
4.
5.

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
```

### Cleaning
```{R}

```

### Exploratory Data Analysis
1.
```{R}

```
2.
```{R}

```
3.
```{R}

```
4.
```{R}

```
5.
```{R}

```

### Tools

- R Language
- R Studio Desktop

## Table of Contents

1. [Exploratory Data Analysis](./01_explore.md)
2. [Data Visualization]()

## Resources

### Important Files in Repository

- [code_eda.R](./code_eda.R) : Exploratory Data Analysis
- [Happiness_original.csv](https://www.kaggle.com/unsdsn/world-happiness?select=2019.csv): Original Dataset

### References

// Link

## About Us

งานนี้เป็นส่วนของวิชา INT214 Statistics for Information technology <br/> ภาคเรียนที่ 1 ปีการศึกษา 2564 คณะเทคโนโลยีสารสนเทศ มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี

### Team: อยากกรีดร้องงงง

1. StudentID: 63130500023 ชิษณุชา สมบูรณ์วรรณะ
2. StudentID: 63130500049 ธนพัฒน์ ไตรรัตน์พนาสันต์
3. StudentID: 63130500058 ธาราดล เผือกเอี่ยม
4. StudentID: 63130500059 ธิติ อึ๊งเจริญ
5. StudentID: 63130500077 ปภาดา เขียวฉอ้อน

### Instructor

- ATCHARA TRAN-U-RAIKUL
- JATAWAT XIE (Git: [safesit23](https://github.com/safesit23))
