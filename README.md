# Hypothesis Testing Assignment

Hypotheis Testing Assingment uploaded on 5/12/2020

Contains the R file of solution and the necessary csv files

Answer 1:
Business Problem/ Action: I assume the restaurant has 2 machines (Units) which make cutlet pieces, and may be the both pieces are served always in the same plate. So, the manager doesn’t wants them to look odd, so he want to check if there is any significant difference in the diameters of cutlet made by the both machines. If they are different then he might take the necessary action (Either repair the machine or purchase a new one). 
Data Collection:  35 diameter samples from both units/ machines are collected. 
			Y = Diameter = Continuous
			X = 2 units = Discrete 
Here we are comparing 2 populations with each other
Normality Test: Need to check if the data acquired from both machines are normal.
Hypothesis Statement:
Ho = No action condition, data is normal.
Ha = Take action, data is not normal. 

p-value for Unit A = 0.2866 
p-value for Unit B = 0.6869
Both p-values are greater than 0.05.
P high Null fly, so we will go with the null hypothesis. I.e. No action, data is normal. 

NOTE: Here we aren’t told anything about the external conditions, for e.g.: are both the unit are of same make? 
Since here nothing is mentioned about the external conditions, I’ll assume that they both don’t have same external conditions. 
So, the next step is to check for variance. 

Variance Test: Need to check if the variance between both datasets are different.
Hypothesis Statement:
Ho = No action, equal variances.
Ha = Take action, unequal variances. 
p-value = 0.3136. Greater the 0.05. 
P high, null fly. So we will go with null hypothesis. I.e. No action, equal variances. 

Since the datasets are normally distributed and have equal variances, we will go with the “2 Sample T for equal Variances” test. 

2 Sample T test: 
Hypothesis Statement: 
Ho = Do not repair/ purchase new machine if diameters of both units are equal.
Ha = Repair machine/ purchase new machine if diameters of both units are unequal.
p-value = 0.4723.
Greater than 0.05. 
P high, null fly. So, we will go with the null hypothesis, i.e. No action, diameters of both units are equal. 

Conclusion: Do not repair/ purchase both the units. No significant difference in diameters from both units. 


Answer 2: 

Business Problem: The hospital wants to determine if there is any difference between the average Turnaround Time of 4 labs. If the average TAT of 4 labs is same, then the hospital won’t take any action. And if there’s any difference between them, the hospital might further decide to conduct further analysis, about the difference in their averages. 

Data Collection: 120 observations (TAT) each from 4 labs are given. 
			Y = Time = Continuous
			X = 4 labs = Discrete 
Here we are comparing 4 labs with each other. 

Normality Test: 
Hypothesis Statement:
Ho = No action, data is normal
Ha = Take action, data is not normal
p-value for the stacked data = 0.1175. Which is greater than 0.05, so we fail to reject the null hypothesis. I.e. Data is normal. 

Variance Test: 
Hypothesis Statement:
Ho = No action, variances are equal
Ha = Take action, variances are not equal
p-value = 0.05161, greater than 0.05, so we fail to reject null hypothesis. I.e. equal variances. 

Since the datasets are normally distributed and have equal variances, we will go with “One Way ANOVA” Test

One Way ANOVA Test: 
Hypothesis Statement: 
Ho = No action, there is no difference between average TAT of all labs.
Ha = Take action, there is difference between the average TAT of all labs. 
p-value = 2 * 10-16, less  than 0.05. We reject null hypothesis. 
Means there is difference between the average TAT of all labs.

Conclusion: There is difference amongst the average TAT of all labs. If the hospital wants to further determine who has the least TAT, we can use 2 Sample T for equal variances test. Because external conditions are not given and variances are equal. 


Answer 3: 

Business Problem: A store wants to determine if the male-female buyer ratio across their stores in different region is same or different. If the ratio is same, then the store won’t take any action. If the ratio is different, then the store might think about making promotions for the respective category. 

Data Collection: Number of buyers (male & female) from each region are given.
			Y = Number of Buyers = Discrete
			X = Regions = Discrete

The data provided in the file is different as of provided in the question. The data present in the minitab file is:
Observed Values	East	West	North	South
Males	50	142	131	70
Females	435	1523	1356	750
Ratio	0.1149	0.0932	0.0966	0.0933

Since both X & Y are discrete, we will go for Chi – Squared Test.

I calculated the male/female proportion and created another dataframe.  And then using that dataframe, conducted the analysis.

Chi – Squared Test:
Hypothesis Statement:
Ho = No action, the ratio of male female buyer ratios are equal. 
Ha = Take action, the ratio of buyer ratios are not equal. 

p-value = 0.2133, more than 0.05.
So we will go with the null hypothesis, Ratios are similar.

Conclusion: The ratio of male – female buyer ratio across different regions are similar. 


Answer 4: 

Business Problem: The manager of TeleCall wants to determine if the defective % varies across 4 centres. If they don’t vary at a 5% significance level, he might not take any action. If there is a variation then a further analysis can be conducted to determine which centre has more defective % and the manager may decide to train the employees at the respective centre for less defective %. 

Data Collection: 300 results from each centre are provided. 
			Y = Centres = Discrete
			X = Result = Discrete	

Since both X & Y are discrete, we will go for Chi-Squared test. 

Chi-Squared Test :
Hypothesis Statement:
Ho = No action, the defective % doesn’t vary across Centres.
Ha = Take action, defective % varies across Centres. 

p-value = 0.2771, more than 0.05.
So we will go with the null hypothesis, defective % doesn’t vary. 

Conclusion: The defective % doesn’t vary across 4 centres at 5% significance level. 


Answer 5:

Business Problem: The sales manager of Fantaloons commented that the % of male versus female walking into the store differ based on the day of the week. We will determine if there is evidence to this assertion at a 5% significance level. The result of which might help the manager to decide for a further analysis.

Data Collection: 400 entries are given for weekdays and weekend each.
			Y = Day of week = Discrete
			X = Gender = Discrete
Since weekday and weekend, two categories are compared. We will go for 2 Proportion Test. 

Can be solved by determining % of male to female visitors on weekdays and weekend. 

Weekday: % of Male to Female visitors.
Ho = No action, proportion of male visitors <= proportion of female visitors
Ha = Take action, proportion of male visitors > proportion of female visitors

Case 1:
Ho = No action, proportion of male visitors = proportion of female visitors
Ha = Take action, proportion of male visitors != proportion of female visitors
p-value = 8.543 X 10-5, less than 0.05. p low, null go. So we will go with alternate hypothesis. Porportion isn’t equal. 
Case 2:
Ho = No action, proportion of male visitors < proportion of female visitors
Ha = Take action, proportion of male visitors > proportion of female visitors
p-value = 1, greater than 0.05. p high, null fly. So we will accept the null hypothesis. 

Result: Proportion of male visitor is less than proportion of female visitors on Weekdays. 

Weekend: % of Male to Female visitors.
Ho = No action, proportion of male visitors <= proportion of female visitors
Ha = Take action, proportion of male visitors > proportion of female visitors

Case 1:
Ho = No action, proportion of male visitors = proportion of female visitors
Ha = Take action, proportion of male visitors != proportion of female visitors
p-value = 8.543 X 10-5, less than 0.05. p low, null go. So we will go with alternate hypothesis. Porportion isn’t equal. 
Case 2:
Ho = No action, proportion of male visitors < proportion of female visitors
Ha = Take action, proportion of male visitors > proportion of female visitors
p-value = 4.272 X 10-5, less than 0.05. p low, null go. So we will go with alternate hypothesis.

Result: Proportion of male visitors greater than proportion of female visitors on Weekends. 

Conclusion: Yes, the sales manager is right. At 5% significance level, on weekdays proportion of female visitors is higher, while on weekend proportion of male visitors is higher.
