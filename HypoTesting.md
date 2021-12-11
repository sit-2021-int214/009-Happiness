# Hypothesis Testing


## Hypothesis testing

is a method of statistical inference. An alternative hypothesis is proposed for the probability distribution of the data, either explicitly or only informally. The comparison of the two models is deemed statistically significant if, according to a threshold probability—the significance level—the data would be unlikely to occur if the null hypothesis were true. [Ref](https://en.wikipedia.org/wiki/Statistical_hypothesis_testing)

### Step to do:
🐈🐎🐑🐱🐯🐏🐖🐄🐃🐂
0. Assign variables:
   - u0 or p0
   - xbar or pbar
   - n
   - sd (or sigma)
   - alpha (default is 0.05)
1. State the hypothesis
2. Select Level of significance (alpha)
3. Select Test statistic (This formula for one population)
   - z/t <- (xbar - u0) / (sd/sqrt(n))
   - z <- (pbar-p0) / sqrt((p0\*(1-p0))/n)
4. Finding P-value approach or Critical Value approach
   - P-value for Z: `pvalue <- pnorm(z)`
   - Critical Value for Z: `zalpha <- qnorm(alpha)`
   - P-value for T: `pvalue <- pt(q, df,lower.tail = TRUE)`
   - talpha for T: `talpha <- qt(p, df, lower.tail = TRUE)`
5. Compare P-value with alpha or z/t with zalpha/talpha
6. Conclusion



### Find Number of Countries (n)

- Finding Number of Countries

```
#Finding Number of Countries
n <- happiness %>% count() %>% pull();
n

```
// 156


### Find Mean (x̄)

- Finding average score of happiness

```
#Finding average score of happiness
mean <- mean(happiness$Score,na.rm = T);
sprintf("%.2f",mean)

```
// 5.41

### Find Standard Deviation (sd, σ)

- Finding Standard Deviation of happiness

```
#Finding Standard Deviation of happiness
sd <- sd(happiness$Score,na.rm = T);
sprintf("%.2f",sd)

```
// 1.11


### Example 1

The Federal Trade Commission (FTC) periodically conducts statistical studies designed to test the claims that manufacturers make about their products. For example, the label on a large can of Hilltop Coffee states that the can contains 3 pounds of coffee. Thus, the FTC interprets the label information on a large can of coffee as a claim by Hilltop that the population mean filling weight is at least 3 pounds per can. The director of the FTC’s testing program willing to risk a 1% chance of making such an error. Suppose a sample of 36 cans of coffee is selected and the population standard deviation can be assumed known with a value of σ = 0.18. Is x̄ = 2.92 pounds small enough to cause us to reject H0 ?

Step 0: Assign variables

```
n <- 156
sd <- 1.11
xbar <- 5.41
u0 <- 5

```

Step 1: State the hypothesis

```
#H0: u>=5   ,Ha: u<5

```

Step 2: Level of significance

```
alpha <- 0.01 

```

Step 3: Test statistic

```
z <- (xbar - u0) / (sd/sqrt(n));
z

```
// 4.600491

Step 4: Finding P-value approach or Critical Value approach

```
# P-value approach
pvalue <- pnorm(z); 
pvalue

# Critical Value approach
zalpha <- qnorm(alpha);
zalpha

```
// P-value = 0.9999979 ,Critical value = -2.326348

Step 5: Compare

```
# Using p-value approach
if(pvalue<=alpha){
  print("Reject H0")
}else{
  print("No Reject H0")
}

# Using critical value
if(z<=zalpha){
  print("Reject H0")
}else{
  print("No Reject H0")
}

```
// P-value = "No Reject H0" ,Critical value = "No Reject H0"

Step 6: Conclusion

//Answer

🐈🐎🐑🐱🐯🐏🐖🐄🐃🐂


### Find Number of Countries (n)

- Finding Number of Countries

```
#Finding Number of Countries
n <- happiness %>% count() %>% pull();
n

```
// 156


### Find Mean (x̄)

- Finding average score of happiness

```
#Finding average score of happiness
mean <- mean(happiness$TrustGov,na.rm = T);
sprintf("%.2f",mean)

```
// 0.11

### Find Standard Deviation (sd, σ)

- Finding Standard Deviation of happiness

```
#Finding Standard Deviation of happiness
sd <- sd(happiness$TrustGov,na.rm = T);
sprintf("%.2f",sd)

```
// 0.094

### Example 2

Gallup World Poll เก็บข้อมูลสำรวจ Trust Goverment จากตัวอย่างทั้งหมด 156 ประเทศ กำหนดค่ามาตรฐานว่าควรอยู่ที่มากกว่าหรือเท่ากับ 0.2 
และมีค่าความเสี่ยงอยู่ที่ 0.05 ซึ่งค่าเฉลี่ยจาก Gallup World Poll อยู่ที่ 0.11 โดยมีส่วนเบี่ยงเบนมาตรฐานอยู่ที่ 0.09
Step 0: Assign variables

```
n <- 156
sd <- 0.094
xbar <- 0.11
u0 <- 0.2

```

Step 1: State the hypothesis

```
#Ho >= 0.2 , Ha <0.2 

```

Step 2: Level of significance

```
alpha <- 0.05

```

Step 3: Test statistic

```
z <- (xbar - u0) / (sd/sqrt(n));
z

```
// -11.81

Step 4: Finding P-value approach or Critical Value approach

```
# P-value approach
pvalue <- pnorm(z); 
pvalue

# Critical Value approach
zalpha <- qnorm(alpha);
zalpha

```
// P-value = 1.715 ,Critical value = -1.644

Step 5: Compare

```
# Using p-value approach
if(pvalue<=alpha){
  print("Reject Ho")
}else{
  print("No Reject Ho")
}

# Using critical value
if(z<=zalpha){
  print("Reject Ho")
}else{
  print("No Reject Ho")
}

```
// P-value = "Reject Ho" ,Critical value = "Reject Ho"

Step 6: Conclusion

//Answer
