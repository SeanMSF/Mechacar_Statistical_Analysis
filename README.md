# Mechacar_Statistical_Analysis

We can reject null in this case, p-value 5.35e-11; independent variables affect mpg and the R-squared suggests these variables impact 68% of mpg effects.

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

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

##Summary stats of suspension coils:

<img width="349" alt="Screen Shot 2021-06-03 at 11 26 47 PM" src="https://user-images.githubusercontent.com/76413899/120745652-36ae6e00-c4c3-11eb-867b-600eca25b27c.png">

<img width="517" alt="Screen Shot 2021-06-03 at 11 26 21 PM" src="https://user-images.githubusercontent.com/76413899/120745674-429a3000-c4c3-11eb-8bb9-67409d22f520.png">

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Lot 3 does not meet this criteria with a variance of 170.28, significant variability in this lot of products is sure to create problems. 

# The T-test on Suspension coils was insignificant with p=.06
t.test
suspension_coil_data$PSI,
subset = suspension_coil_data$Manufacturing_Lot,
mu = 1500
One Sample t-test
suspension_coil_data$PSI :
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78



