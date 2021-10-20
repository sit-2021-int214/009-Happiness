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
2. อยากรู้ว่าสินค้าไหนได้รับความนิยมสูงสุด
```
exam2 <- superstore %>% filter(Product.Name == max(Product.Name)) 
```
* สรุปได้ว่าสินค้าที่ได้รับความนิยมคือ Zipper Ring Binder Pockets
3. อยากรู้ว่าจากข้อมูลลูกค้าเลือกการส่งในรุปแบบคลาสไหนมากที่สุด และ มีผลต่อราคาของสินค้าไหม
```
exam3 <-superstore %>% select(Ship.Mode , Sales) %>% arrange(desc(Sales))
```
* สรุปได้ว่าราคาของสินค้าไม่มีผลต่อการอัพเกรดคลาสในการส่ง
4. อยากรู้ว่าในปี 2018 และ 2015 ปีไหนมียอดส่งมากที่สุด
```

```
5.
```
```
6.
```
```

