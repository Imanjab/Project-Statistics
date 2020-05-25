#Histogram - Age
hist(HCV$Age, main = "Age distribution of HCV patients", xlab = "Age", ylab = "Frequency" )

#Histogram - WBC
hist(HCV$WBC, main = "WBC count of HCV patients", xlab = "WBC Count", ylab = "Frequency" )

#Barplot - Gender
barplot(table(HCV$Gender), main = "HCV patients based on Gender", xlab = "Gender", ylab = "Frequency")

#Barplot - Epigastric pain
barplot(table(HCV$`Epigastric pain`), main = "Epigastric pain for HCV patients", xlab = "Pain", ylab = "Frequency")

#Mean - hemoglobin
mean(HCV$HGB)

#Median - hemoglobin
median(HCV$HGB)

#Variance - hemoglobin
var(HCV$HGB)

#Standard Deviation - hemoglobin
sd(HCV$HGB)

#Mean - BMI
mean(HCV$BMI)

#Median - BMI
median(HCV$BMI)

#Variance - BMI
var(HCV$BMI)

#Standard Deviation - BMI
sd(HCV$BMI)

#Correaltion and scatterplot - Alanine Transaminase and Platelet (week 1)
cor( HCV$Plat,HCV$`ALT 1`)
plot( HCV$Plat,HCV$`ALT 1`,xlab = 'Platelet',ylab = 'Alanine Transaminase', main ='ALT vs Platelet week 1')

#Correaltion and scatterplot - Alanine Transaminase and Platelet (week 12)
cor( HCV$Plat,HCV$`ALT 12`)
plot( HCV$Plat,HCV$`ALT 12`,xlab = 'Platelet',ylab = 'Alanine Transaminase', main ='ALT vs Platelet after week 12')

#Correaltion and scatterplot - Alanine Transaminase and Platelet (week 24)
cor( HCV$Plat,HCV$`ALT after 24 w`)
plot( HCV$Plat,HCV$`ALT after 24 w`,xlab = 'Platelet',ylab = 'Alanine Transaminase', main ='ALT vs Platelet after week 24')

#95% confidence interval for mean WBC 
jaundice <- subset(HCV, Jaundice == 2)
x = mean(jaundice$WBC)
sd = sd(jaundice$WBC)
z = -qnorm(0.025)
n = 691
L = x - z*sd/sqrt(n)
U = x + z*sd/sqrt(n)

#95% confidence interval for mean women BMI
bmi <- subset(HCV, Gender == 2)
x = mean(bmi$BMI)
sd = sd(bmi$BMI)
z = -qnorm(0.025)
n = 678
L = x - z*sd/sqrt(n)
U = x + z*sd/sqrt(n)

#Linear Model
WBC.lm = lm(formula = `ALT 1` ~ WBC, data = HCV)
summary(WBC.lm)$r.squared
hist(resid(WBC.lm)xlab = 'Residual', main = 'Residual Distribution')
plot(fitted.values(WBC.lm),resid(WBC.lm),xlab = 'Actual response', ylab = 'Residual',main = 'Actual vs Residual')

#Hypothesis test
z = 2.3
-qnorm(0.05)

t = 0.03
-qt(0.05,1384)






