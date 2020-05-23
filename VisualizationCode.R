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

#Correaltion and scatterplot - Alanine Transaminase and Platelets (week 24)
cor( HCV$Plat,HCV$`ALT after 24 w`)
plot( HCV$Plat,HCV$`ALT after 24 w`,xlab = 'Platelet',ylab = 'Alanine Transaminase', main ='ALT vs Platelet after week 24')


