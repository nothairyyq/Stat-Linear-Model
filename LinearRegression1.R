x<-c(30,28,32,25,25,25,22,24,35,40)
y<-c(25,30,27,40,42,40,50,45,30,25)
data<-data.frame(x,y)
fit<-lm(y~x,data=data)
summary(fit)