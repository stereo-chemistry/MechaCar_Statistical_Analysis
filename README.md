# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Vehicle length and ground clearance variables both provide non-random amounts of variance to the MPG values in this dataset. this is determined with reference to the p values **Pr(>|t|)** for each variable. Vehicle length and ance ground clearance list **Pr(>|t|)** values less than 0.05, suggesting statistical significant relationship with the dependent variable MPG.
### Is the slope of the linear model considered to be zero? Why or why not?
The slope of our linear model is considered to be non-zero. Our linear regression model prints a p-value of 5.35e-11, much smaller than our significance level 0.05%, rejecting the null hypothesis that the slope of the linear model is zero.
### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
This linear model appears to predict mpg of MechaCar prototypes fairly effectively. This can be determined from the R<sup>2</sup> value 0.7149 reported in our linear regression model summary. \
### Sidenote
If we take the square root of our R<sup>2</sup> value, we obtain an R value of |0.8455|, suggesting strong correlation between our dependent variable mpg and independent variables in this linear regression model, where only vehicle length and ground clearance were found to significantly contribute to the MechaCar vehicle's MPG.
## Summary Statistics on Suspension Coils
The design specification for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch (PSI). Upon initial inspection, all suspension coil data was summarized to find a variance in PSI measurements of 62.29. In total, the current manufacturing data meets the design specification. However, upon further inspection, it was found that Manufacturing Lot 3 exceeds the specified 100 PSI variance limit with a variance of 170.29 PSI. Manufacturing lots 1 & 2 satisfy suspensioin coil variance specifications, but Manufacturing Lot 3 does not.
## T-Tests on Suspension Coils
### All lots against industry average 1500 suspension coil PSI
The mean of all lots' suspension coil PSI is 1498.778. Null hypothesis states sample mean is not statistically different than mu = 1500 PSI. The t.test reports a p-value of 0.06028 > 0.05 and we fail to reject the null hypothesis at the 95% confidence interval. There is no statistical difference between all lots' average suspension coil PSI of 1498.778 and the industry standard 1500 PSI.
### Lot 1 against industry average of 1500 suspension coil PSI
The mean of Lot 1's suspension coil PSI is 1499.778 Null hypothesis states sample mean is not statistically different than mu = 1500 PSI. The t.test reports a p-value of 1 > 0.05 and we fail to reject the null hypothesis at the 95% confidence interval. There is no statistical difference between Lot 1's average suspension coil PSI of 1498.778 and the industry standard 1500 PSI.
### Lot 2 against industry average of 1500 suspension coil PSI
The mean of Lot 2's suspension coil PSI is 1499.423. Null hypothesis states sample mean is not statistically different than mu = 1500 PSI. The t.test reports a p-value of 0.6072 > 0.05 and we fail to reject the null hypothesis at the 95% confidence interval. There is no statistical difference between Lot 2's average suspension coil PSI of 1499.423 and the industry standard 1500 PSI.
### Lot 3 against industry average of 1500 suspension coil PSI
The mean of Lot 3's suspension coil PSI is 1496.14. Null hypothesis states sample mean is not statistically different than mu = 1500 PSI. The t.test reports a p-value of 0.04168 < 0.05 and we reject the null hypothesis at the 95% confidence interval. There is a statistical difference between Lot 3's average suspension coil PSI of 1496.14 and the industry standard 1500 PSI.
