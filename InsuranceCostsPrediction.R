install.packages("factoextra")
install.packages("rpart")
install.packages("rpart.plot")
install.package("rattle")
install.packages("RColorBrewer")
install.packages("dplyr") 

library(tidyverse)
library(rpart)
library(rpart.plot)
library(rattle)
library(RColorBrewer)
library(class)
library(factoextra)
library(dplyr) 

allincidents <-read.csv("../../../Desktop/Project/alldata.csv", header=TRUE, check.names =FALSE)
summary(allincidents)
head(allincidents)

hist(allincidents$InsuranceCost, 
     main="Histogram for Insurance Costs", 
     xlab="Insurance Cost", 
     border="yellow", 
     col="blue",
     xlim=c(100,3000),
     las=1, 
     breaks=5)

lm_insuranceCosts <- lm(InsuranceCost ~ TotalDisasters, data=allincidents)
summary(lm_insuranceCosts)

unseenCost1 <- data.frame(TotalDisasters = 2500)
predict(lm_insuranceCosts, unseenCost1)

unseenCost2 <- data.frame(TotalDisasters = 20)
predict(lm_insuranceCosts, unseenCost2)

unseenCost3 <- data.frame(TotalDisasters = 4000)
predict(lm_insuranceCosts, unseenCost3)

unseenCost4 <- data.frame(TotalDisasters = 5000)
predict(lm_insuranceCosts, unseenCost4)

unseenCost5 <- data.frame(TotalDisasters = 10000)
predict(lm_insuranceCosts, unseenCost5)

with(allincidents,plot(TotalDisasters, InsuranceCost, pch = 16, col = "blue"))
abline(lm_insuranceCosts)

















