๐ถ๐ต๐บ๐ฑ๐ฆ๐ฏ๐ฆ๐ฆ๐ฆ๐ฎ๐ท๐๐ญ๐น๐ฐ๐ป๐ปโโ๏ธ๐จ๐ผ๐ธ๐ฆ๐ด๐ฆ๐๐ฒ๐ฝ๐พ๐๐ฆ๐ฆง๐ฆฎ๐โ๐ฆบ๐ฉ๐๐๐โโฌ๐๐๐๐ฆ๐ฆฌ๐ฆ๐ฆ๐๐๐

# ๐ Assignment 4 : Data Visualization ๐

### ๐ป Superstore Sales Dataset : [file CSV](https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/superstore_sales.csv) ๐ป

## ๐ data in dataset ๐

* show dataset เนเธเนเธเธณเธชเธฑเนเธ `glimps`
```
glimpse()
```
```
$ Row.ID        <int> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44,~
$ Order.ID      <chr> "CA-2017-152156", "CA-2017-152156", "CA-2017-138688", "US-2016-108966", "US-2016-108966", "CA-2015-115812", "CA-2015-115812", "CA-2015-115812", "CA-2015-115812", "CA-~
$ Order.Date    <chr> "08/11/2017", "08/11/2017", "12/06/2017", "11/10/2016", "11/10/2016", "09/06/2015", "09/06/2015", "09/06/2015", "09/06/2015", "09/06/2015", "09/06/2015", "09/06/2015"~
$ Ship.Date     <chr> "11/11/2017", "11/11/2017", "16/06/2017", "18/10/2016", "18/10/2016", "14/06/2015", "14/06/2015", "14/06/2015", "14/06/2015", "14/06/2015", "14/06/2015", "14/06/2015"~
$ Ship.Mode     <chr> "Second Class", "Second Class", "Second Class", "Standard Class", "Standard Class", "Standard Class", "Standard Class", "Standard Class", "Standard Class", "Standard ~
$ Customer.ID   <chr> "CG-12520", "CG-12520", "DV-13045", "SO-20335", "SO-20335", "BH-11710", "BH-11710", "BH-11710", "BH-11710", "BH-11710", "BH-11710", "BH-11710", "AA-10480", "IM-15070"~
$ Customer.Name <chr> "Claire Gute", "Claire Gute", "Darrin Van Huff", "Sean O'Donnell", "Sean O'Donnell", "Brosina Hoffman", "Brosina Hoffman", "Brosina Hoffman", "Brosina Hoffman", "Bros~
$ Segment       <chr> "Consumer", "Consumer", "Corporate", "Consumer", "Consumer", "Consumer", "Consumer", "Consumer", "Consumer", "Consumer", "Consumer", "Consumer", "Consumer", "Consumer~
$ Country       <chr> "United States", "United States", "United States", "United States", "United States", "United States", "United States", "United States", "United States", "United State~
$ City          <chr> "Henderson", "Henderson", "Los Angeles", "Fort Lauderdale", "Fort Lauderdale", "Los Angeles", "Los Angeles", "Los Angeles", "Los Angeles", "Los Angeles", "Los Angeles~
$ State         <chr> "Kentucky", "Kentucky", "California", "Florida", "Florida", "California", "California", "California", "California", "California", "California", "California", "North C~
$ Postal.Code   <int> 42420, 42420, 90036, 33311, 33311, 90032, 90032, 90032, 90032, 90032, 90032, 90032, 28027, 98103, 76106, 76106, 53711, 84084, 94109, 94109, 94109, 68025, 68025, 19140~
$ Region        <chr> "South", "South", "West", "South", "South", "West", "West", "West", "West", "West", "West", "West", "South", "West", "Central", "Central", "Central", "West", "West", ~
$ Product.ID    <chr> "FUR-BO-10001798", "FUR-CH-10000454", "OFF-LA-10000240", "FUR-TA-10000577", "OFF-ST-10000760", "FUR-FU-10001487", "OFF-AR-10002833", "TEC-PH-10002275", "OFF-BI-100039~
$ Category      <chr> "Furniture", "Furniture", "Office Supplies", "Furniture", "Office Supplies", "Furniture", "Office Supplies", "Technology", "Office Supplies", "Office Supplies", "Furn~
$ Sub.Category  <chr> "Bookcases", "Chairs", "Labels", "Tables", "Storage", "Furnishings", "Art", "Phones", "Binders", "Appliances", "Tables", "Phones", "Paper", "Binders", "Appliances", "~
$ Product.Name  <chr> "Bush Somerset Collection Bookcase", "Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back", "Self-Adhesive Address Labels for Typewriters by Universal", "Bret~
$ Sales         <dbl> 261.9600, 731.9400, 14.6200, 957.5775, 22.3680, 48.8600, 7.2800, 907.1520, 18.5040, 114.9000, 1706.1840, 911.4240, 15.5520, 407.9760, 68.8100, 2.5440, 665.8800, 55.50~
```


## ๐ปโโ๏ธ Library ๐ปโโ๏ธ 
```
library(dplyr) 
```
* เนเธเนเธ library เนเธเธเธฒเธฃเนเธเนเธเธฑเธงเธเนเธงเธข %>% เธชเธฒเธกเธฒเธฃเธเนเธเนเนเธเนเธซเธฅเธฒเธขเธเธณเธชเธฑเนเธเธเนเธญ เน เธเธฑเธเนเธเนเนเธกเนเธเนเธญเธเนเธเธตเธขเธเธเธฃเธฃเธเธฑเธเนเธซเธกเน
```
library(ggplot2)
```
* เนเธเนเธ library เนเธเธเธฒเธฃเธชเธฃเนเธฒเธเธเธฃเธฒเธ 
```
library(assertive)
```
* เนเธเนเธ library เนเธเธเธฒเธฃเธเธฃเธงเธเธชเธญเธเธเธฃเธฐเนเธ?เธ
```
library(tidyverse)
```
* เนเธเนเธ library เนเธเธเธฒเธฃเนเธฃเธตเธขเธเนเธเน ggplot
# ๐ PartA ๐

## ๐ Defind  insight the data at least 6. ๐
1. เธญเธขเธฒเธเธฃเธนเนเธงเนเธฒเธกเธตเธเธฒเธฃเธเธฑเธเธชเนเธเธเธฑเธชเธเธธเธกเธฒเธเธเธตเนเธชเธธเธเธฃเธฐเธซเธงเนเธฒเธ Home office เธเธฑเธ  Corporate
```
exam1 <- superstore %>% filter(Segment == 'Home Office' | Segment == 'Corporate' ) %>% count(Segment)
```
* เธชเธฃเธธเธเนเธเนเธงเนเธฒ Corporate เธกเธฒเธเธเธงเนเธฒ Home office 
2. เธญเธขเธฒเธเธฃเธนเนเธงเนเธฒเธชเธดเธเธเนเธฒเนเธซเธเนเธเนเธฃเธฑเธเธเธงเธฒเธกเธเธดเธขเธกเธชเธนเธเธชเธธเธ
```
exam2 <- superstore %>% filter(Product.Name == max(Product.Name)) 
```
* เธชเธฃเธธเธเนเธเนเธงเนเธฒเธชเธดเธเธเนเธฒเธเธตเนเนเธเนเธฃเธฑเธเธเธงเธฒเธกเธเธดเธขเธกเธเธทเธญ Zipper Ring Binder Pockets
3. เธญเธขเธฒเธเธฃเธนเนเธงเนเธฒเธเธฒเธเธเนเธญเธกเธนเธฅเธฅเธนเธเธเนเธฒเนเธฅเธทเธญเธเธเธฒเธฃเธชเนเธเนเธเธฃเธธเธเนเธเธเธเธฅเธฒเธชเนเธซเธเธกเธฒเธเธเธตเนเธชเธธเธ เนเธฅเธฐ เธกเธตเธเธฅเธเนเธญเธฃเธฒเธเธฒเธเธญเธเธชเธดเธเธเนเธฒเนเธซเธก
```
exam3 <-superstore %>% select(Ship.Mode , Sales) %>% arrange(desc(Sales))
```
* เธชเธฃเธธเธเนเธเนเธงเนเธฒเธฃเธฒเธเธฒเธเธญเธเธชเธดเธเธเนเธฒเนเธกเนเธกเธตเธเธฅเธเนเธญเธเธฒเธฃเธญเธฑเธเนเธเธฃเธเธเธฅเธฒเธชเนเธเธเธฒเธฃเธชเนเธ
4. เธญเธขเธฒเธเธฃเธนเนเธงเนเธฒเนเธเธเธต 2018 เนเธฅเธฐ 2015 เธเธตเนเธซเธเธกเธตเธขเธญเธเธชเนเธเธกเธฒเธเธเธตเนเธชเธธเธ
```
exam4 <- superstore %>% filter( 2018 == format(as.Date(Ship.Date , format = "%d/%m/%Y"),"%Y")) %>% count()
exam4.1 <- superstore %>% filter( 2015 == format(as.Date(Ship.Date , format = "%d/%m/%Y"),"%Y")) %>% count()
```
* เธชเธฃเธธเธเธงเนเธฒ เธเธต 2018 เธกเธตเธขเธญเธเธชเนเธเธกเธฒเธเธเธงเนเธฒ 2015
5. เธญเธขเธฒเธเธฃเธนเนเธงเนเธฒเธฅเธนเธเธเนเธฒเธเธตเนเธชเธฑเนเธเธกเธฒเธเธเธตเนเธชเธธเธเธเธทเธญเธญเธฐเนเธฃ
```
exam5 <- superstore %>%  filter(Customer.Name == max(Customer.Name)) 
```
* เธชเธฃเธธเธเนเธเนเธงเนเธฒเธฅเธนเธเธเนเธฒเธเธตเนเธชเธฑเนเธเนเธขเธญเธฐเธเธตเนเธชเธธเธเธเธทเธญ Zuschuss Donatelli
6. เธญเธขเธฒเธเธฃเธนเนเธงเนเธฒเธเธฃเธฐเนเธ?เธเธชเธดเธเธเนเธฒเนเธซเธเธกเธฒเธเธเธตเนเธชเธธเธเนเธฅเธฐเธเนเธญเธขเธเธตเนเธชเธธเธ
```
exam6 <- superstore %>% filter(Category == max(superstore$Category) | Category == min(superstore$Category)) %>% select(Category) %>% table()
```
* เธชเธฃเธธเธเนเธเนเธงเนเธฒเธเธฃเธฐเนเธ?เธเธเธตเนเธกเธฒเธเธเธตเนเธชเธธเธเธเธทเธญ Furniture เนเธฅเธฐเธเนเธญเธขเธเธตเนเธชเธธเธเธเธทเธญ Technology

## ๐ PARTA Graphs ๐

1. เธญเธขเธฒเธเธฃเธนเน grahp เธเธฃเธฐเนเธ?เธเนเธซเธ เธกเธตเธฃเธฒเธเธฒเธชเธนเธเธชเธธเธ

```
superstore %>% ggplot(aes(x=Category,y=Sales))+geom_point() + ggtitle("sales in each  category")
```
Result: <br>
<img src = "https://scontent.fbkk17-1.fna.fbcdn.net/v/t1.6435-9/246877385_110119461457573_5666829593946291777_n.jpg?_nc_cat=107&_nc_rgb565=1&ccb=1-5&_nc_sid=730e14&_nc_ohc=I_Iu8mKlH-IAX9yGG-H&_nc_ht=scontent.fbkk17-1.fna&oh=35821189075916d1f7ebbcfc4438136f&oe=61986AE7" height = "400"  width = "950" > <br>

* เธเธฃเธฐเนเธ?เธ Technology เธกเธตเธฃเธฒเธเธฒเธชเธนเธเธเธตเนเธชเธธเธ

2. เธญเธขเธฒเธเธฃเธนเธงเนเธฒ grahp เธฃเธฑเธเนเธซเธเธกเธตเธขเธญเธเธชเนเธเธชเธนเธเธชเธธเธ
```
superstore %>% select(State) %>% table() %>% 
barplot(main = "state grahp has the highest delivery volume" ,xlab = "name state" , ylab = "count")
```
Result: <br>
<img src = "https://scontent.fbkk17-1.fna.fbcdn.net/v/t1.6435-9/246278884_110150408121145_6667351284347290079_n.jpg?_nc_cat=110&_nc_rgb565=1&ccb=1-5&_nc_sid=730e14&_nc_ohc=I2ZCB3pCu5QAX-GdbBe&tn=_5O1BZeDu-wQ_iVG&_nc_ht=scontent.fbkk17-1.fna&oh=355209e34db794fd35be3f590e68099e&oe=61972844">

*  เธเธฒเธเธเธฃเธฒเธเธเธณเนเธซเนเธฃเธนเนเธงเนเธฒ เธฃเธฑเธ California เธกเธตเธขเธญเธเธชเธนเธเธชเธธเธ
## POWER BI MY DATA SET: [link Here](https://app.powerbi.com/links/2oSIyVyZOz?ctid=6f4432dc-20d2-441d-b1db-ac3380ba633d&pbi_source=linkShare)
๐๐๐คค๐๐๐๐๐๐ค๐ฒโน๏ธ๐๐๐๐๐ค๐ข๐ญ๐ฆ๐จ๐ง๐ฉ๐คฏ๐ฌ๐ฎโ๐จ๐ฐ๐ฑ๐ฅต๐ฅถ๐ณ๐คช๐ต๐ตโ๐ซ๐ฅด๐?๐ก๐คฌ๐ท๐ค๐ค๐คข๐คฎ๐คง๐๐ฅณ๐ฅธ
