#Histogram - Age
hist(HCV$Age, main = "Age distribution of HCV patients", xlab = "Age", ylab = "Frequency" )

#Histogram - WBC
hist(HCV$WBC, main = "WBC count of HCV patients", xlab = "WBC Count", ylab = "Frequency" )

#Barplot - Gender
barplot(table(HCV$Gender), main = "HCV patients based on Gender", xlab = "Gender", ylab = "Frequency")

#Barplot - Epigastric pain
barplot(table(HCV$`Epigastric pain`), main = "Epigastric pain for HCV patients", xlab = "Pain", ylab = "Frequency")