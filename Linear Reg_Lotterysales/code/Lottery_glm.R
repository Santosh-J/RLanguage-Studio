data<-read.csv(file="C:/Users/santo/Desktop/Lottery.csv",header=TRUE,sep=",")
View(data)
head(data)
linearMod<-lm(Sales~FY, data=data)
print(linearMod)
summary(linearMod)
set.seed(100)
trainRowIndex<-sample(1:nrow(data),0.8*nrow(data))
train_data<-data[trainRowIndex, ]
test_data<-data[-trainRowIndex, ]
lmMod<-lm(Sales ~ FY,data=train_data)
plot(data$FY,data$Sales)
abline(lmMod,col="blue")
Pred<-predict(lmMod,test_data)
print(Pred)


