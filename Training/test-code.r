#####
library(randomForest)
load ("Training.RData")
testfile <- read.table("Sample_data.txt",head=T,sep="\t")
y <- predict(mod.RF, newdata=testfile)
result<-cbind(y,testfile)
colnames(result)<-c("N2O/(N2O+N2)","O18","SP")
write.table(result,"Result_data.txt",col.names=T,row.names=F,sep="\t",quote=F)

