library(readxl)

setwd("C://Users//DELL//Desktop//Assignments//Session6")
titanicDF <- read_excel("titanic3.xls")

# a. Is there any difference in fares by different class of tickets?   
# Note- show a boxplot displaying the distribution of fares by class

boxplot(fare~pclass,data= titanicDF,
        main="Fares Versus Pclass",xlab="Class",ylab="Fare",col=topo.colors(4))

#b. Is there any association with Passenger class and gender?
#Note- show a stacked bar chart

counts<-table(titanicDF$sex,titanicDF$pclass)
barplot(counts, main = "Distribution of Class by gender", xlab="Pclass", col=c("blue", "red"), legend = c("Female","Male"), names.arg = c("Pclass1st", "Pclass2nd","Pclass3rd"))

