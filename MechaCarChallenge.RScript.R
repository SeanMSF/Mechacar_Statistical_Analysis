
> setwd("~/Desktop/Mod_15_challenge")
> table <- read.csv(file='MechaCar_mpg(2).csv',check.names=F,stringsAsFactors = F)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file 'MechaCar_mpg(2).csv': No such file or directory
> setwd("~/Desktop")
> table <- read.csv(file='MechaCar_mpg(2).csv',check.names=F,stringsAsFactors = F)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file 'MechaCar_mpg(2).csv': No such file or directory
> table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file 'MechaCar_mpg.csv': No such file or directory
> table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
> library('dplyr')

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:
  
  filter, lag

The following objects are masked from ‘package:base’:
  
  intersect, setdiff, setequal, union

> 
  > # MechaCar MPG prediction
  > mecha_car<-read.csv('MechaCar_mpg.csv')
> 
  > mecha_car_lm<-lm(mecha_car$mpg~mecha_car$AWD +
                       +                      mecha_car$ground_clearance +
                       +                      mecha_car$spoiler_angle +
                       +                      mecha_car$vehicle_length +
                       +                      mecha_car$vehicle_weight,
                     +                  mecha_car)
> 
  > summary(mecha_car_lm)

Call:
  lm(formula = mecha_car$mpg ~ mecha_car$AWD + mecha_car$ground_clearance + 
       mecha_car$spoiler_angle + mecha_car$vehicle_length + mecha_car$vehicle_weight, 
     data = mecha_car)

Residuals:
  Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)                -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
  mecha_car$AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
mecha_car$ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
  mecha_car$spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
mecha_car$vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
  mecha_car$vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

> 
  > # Summary Statistics on Suspension Coils
  > 'Suspension_Coil.csv' %>%
  +     read.csv()->suspension_coil_data

Error: unexpected symbol in "table <- read.csv(file='table <- read.csv(file='Suspension_Coil.csv"
> table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
> suspension_coil_data %>%
+     summarise(
+         Mean = mean(PSI),
+         Median = median(PSI),
+         Variance = var(PSI),
+         SD = sd(PSI)
+     )->total_summary
Error in summarise(., Mean = mean(PSI), Median = median(PSI), Variance = var(PSI),  : 
  object 'suspension_coil_data' not found
> 
> # Summary Statistics on Suspension Coils
> 'Suspension_Coil.csv' %>%
+     read.csv()->suspension_coil_data
> 
> 
> suspension_coil_data %>%
+     summarise(
+         Mean = mean(PSI),
+         Median = median(PSI),
+         Variance = var(PSI),
+         SD = sd(PSI)
+     )->total_summary
> 
> 
> suspension_coil_data %>%
+     group_by(Manufacturing_Lot) %>%
+     summarise(
+         Mean = mean(PSI),
+         Median = median(PSI),
+         Variance = var(PSI),
+         SD = sd(PSI)
+     )->lot_summary
> 
> 
> # T-Tests on Suspension Coils
> t.test(
+     suspension_coil_data$PSI,
+     subset = suspension_coil_data$Manufacturing_Lot,
+     mu = 1500
+ )

	One Sample t-test

data:  suspension_coil_data$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 
> 
