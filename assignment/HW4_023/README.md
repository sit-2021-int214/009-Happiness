# 😁 Assignment 4 : Data Visualization 😁

### 👻 Superstore Sales Dataset : [file CSV](https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/superstore_sales.csv) 👻

## 🐻‍❄️ Library 🐻‍❄️ 
```
library(dplyr) 
```
```
library(ggplot2)
```

# PartA

## Defind  insight the data at least 6.
1. อยากรู้ว่ามีการจัดส่งพัสดุมากที่สุดระหว่าง Home office กับ  Corporate
```
exam1 <- superstore %>% filter(Segment == 'Home Office' | Segment == 'Corporate' ) %>% count(Segment)
```
* สรุปได้ว่า Corporate มากกว่า Home office 
2. 
```
```
3.
```
```
4.
```
```
5.
```
```
6.
```
```

