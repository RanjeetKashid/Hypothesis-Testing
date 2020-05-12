#########Question 1##########

Cutlets =read.csv(file.choose())
attach(Cutlets)

###Normality Test###
library(nortest)

ad.test(Unit.A) #anderson darling normality test
ad.test(Unit.B)

###Variance Test###

var.test(Unit.A, Unit.B)

###2 Sample T test###

t.test(Unit.A, Unit.B,alternative = "two.sided", conf.level = 0.95, correct = TRUE)


#########Question 2##########

LabTAT = read.csv(file.choose())
LabTAT1 <- LabTAT[-c(1), ] # since 1st row is of labority names, I deleted that row
class(LabTAT1$V1)

#Since the class of data is "factor", we need to convert it to numeric.
indx <- sapply(LabTAT1, is.factor)
LabTAT1[indx] <- lapply(LabTAT1[indx], function(x) as.numeric(as.character(x)))

class(LabTAT1$V1)
attach(LabTAT1)
stacked_data <- stack(LabTAT1)
attach(stacked_data)

###Normality Test###
shapiro.test(stacked_data$values)

###Variance Test###
library(car)
leveneTest(stacked_data$values ~ stacked_data$ind, data = stacked_data)

###One Way Anova Test###
Anova_results <- aov(values~ind,data = stacked_data)
summary(Anova_results)


#########Question 3##########

BuyerRatio = read.csv(file.choose())

MFBR <- c(0.1149, 0.0932, 0.0966, 0.0933) #MFBR stands for Male Female Buyer Ratio
Region <- c('East', 'West', 'North', 'South')
Buyer_Ratio <- data.frame(MFBR, Region)

View(Buyer_Ratio)
attach(Buyer_Ratio)
table(MFBR,Region)

###Chi-Sqaured Test###
chisq.test(table(MFBR,Region))


#########Question 4##########

`Costomer+OrderForm` = read.csv(file.choose())

cof <- data.frame(lapply(`Costomer+OrderForm`, as.character), stringsAsFactors=FALSE) #to convert factor data into character data
stacked_cof <- stack(cof)

install.packages("tidyverse")
library(tidyverse)

binary_cof1 <- stacked_cof %>% 
  mutate(values = recode(values, 
                    "Error Free" = "0", 
                    "Defective" = "1")) # %>% 
  #mutate(values = as.numeric(levels(values))[values])

as.numeric(as.character(binary_cof1$values)) #converts data to numeric

colnames(binary_cof1)[1] = "Result"
colnames(binary_cof1)[2] = "Centre"

attach(binary_cof1)
table(Result,Centre)

###Chi-Sqaured Test###
chisq.test(table(Result,Centre))


#########Question 5##########

Faltoons = read.csv(file.choose())
F <- data.frame(lapply(Faltoons, as.character), stringsAsFactors=FALSE)
Stack_F <- stack(F)

colnames(Stack_F)[1] = "Gender"
colnames(Stack_F)[2] = "Day"

attach(Stack_F)
table_F <- table(Gender,Day)
table_F
table(Gender)

### Proportion Test ###

#weekday male to female proportion 
prop.test(x=c(113, 287),n=c(280, 520),conf.level = 0.95,correct = TRUE,alternative = "two.sided")

prop.test(x=c(113, 287),n=c(280, 520),conf.level = 0.95,correct = TRUE,alternative = "greater")

#weekend male to female proportion
prop.test(x=c(167, 233),n=c(280, 520),conf.level = 0.95,correct = TRUE,alternative = "two.sided")

prop.test(x=c(167, 233),n=c(280, 520),conf.level = 0.95,correct = TRUE,alternative = "greater")
