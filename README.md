# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![image](https://user-images.githubusercontent.com/70483866/102707854-16b42680-4264-11eb-8534-af83012810d3.png)

### Vehicle length, ground clearance and intercept provide non-random amount of variance to the mpg values in the dataset. In other words, vehicle length and ground clearance have a statistically significant impact on MPG, and the intercept is statistically significant which means that there are other significant variables and factors not included in the model.

### There is not enough evidence to conclude that the slope of the linear model is zero because vehicle length and ground clearance are non-random and have a statistically significant impact on MPG.

### Since the intercept is statistically significant and there are other significant variables and factors not included in the model, this model fails to predict future mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils

![image](https://user-images.githubusercontent.com/70483866/102708826-f20f7d00-426a-11eb-81c8-5156644ddcb7.png)

![image](https://user-images.githubusercontent.com/70483866/102708847-2420df00-426b-11eb-8de8-b3ddfe6ff7d7.png)

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data does not meet this design specification for all manufacturing lots in total as the variance for Lot 3 exceeds it by nearly 70 psi. However, lots 1 and 2 do not exceed the variance limit.

## T-Tests on Suspension Coils

### Combined lots (1-3) t-test 

![image](https://user-images.githubusercontent.com/70483866/102721732-4c87f800-42c2-11eb-9537-84fe17107352.png)

### Lot 1 t-test

![image](https://user-images.githubusercontent.com/70483866/102721761-793c0f80-42c2-11eb-8df8-26a2b7ad591a.png)

### Lot 2 t-test

![image](https://user-images.githubusercontent.com/70483866/102721784-953fb100-42c2-11eb-83a6-362d0ba6d2de.png)

### Lot 3 t-test

![image](https://user-images.githubusercontent.com/70483866/102721808-b4d6d980-42c2-11eb-948a-fba95d14eeb5.png)

Given the results from running the t-tests, the p-value is 1.0 across each individual lot as well as for all 3 lots combined, which is far greater than the significance level of 0.05. Therefore, we would go ahead and fail to reject the null hypothesis stating that there is no statistically significant difference in the means across all 3 lots and that the difference is negligible. 

## Study Design: MechaCar vs Competition

### What metric or metrics are you going to test?

To test vehicle performance between MechaCar and vehicles from the same class from other car manufacturers, we will analyze the city/highway fuel efficiency of each. This will specifically mean we'll be looking at their miles per gallon as a measure of distance traveled in miles for every gallon of fuel expended. 

### What is the null hypothesis or alternative hypothesis?

The null hypothesis will be that the difference in mean fuel efficieny between MechaCar and cars of the same class from other car manufacturers will be negligible or nearly the same. The alternative hypothesis in contrast will be that the difference in mean fuel efficiency between MechaCar and cars of the same class from other car manufacturers will be significantly different.

### What statistical test would you use to test the hypothesis? And why?

Since we are comparing how MechaCar performs against vehicles of the same class from multiple other manufacturing companies and will be comparing MechaCar versus the performance of several other cars and not just one, the most appropriate statistical test to run would be an ANOVA test rather than a 2-sample t-test, which would be comparing distribution means from two samples.

### What data is needed to run the statistical test?

We would need fuel efficiency data for a sample size in the ballpark of 50 cars of the same class from other car manufacturers to run a strong statistical comparison between the mean distribution of fuel efficiencies between MechaCar and cars of the same class from other manufacturers.
