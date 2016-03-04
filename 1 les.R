f=rep(c('mouse','rat','fly'),c(5,7,11))
x=factor(f)
summary(f)
summary(x)


y=1:100
summary(y)
summary(y)[1]
summary(y)["Min."]
summary(x)["rat"]


d=rep(c("A","T","G","C"), c(2880,1478,3890,7600))
s=factor(d)
summary(d)
summary(s)
length(s)
q=summary(s)/length(s)


sample(d, size = 84000, replace = TRUE)
q2=sample(d, size = 84000, replace = TRUE)
x2=factor(q2)
summary(q2)
summary(x2)
length(x2)
a=summary(x2)/length(x2)
q-a


 iris[3,]
 iris[,3]
iris[iris$Species==c('setosa','versicolor'),c('Sepal.Length','Petal.Length')]
z=factor(iris$Petal.Length)
m=iris[iris$Petal.Length>2 & iris$Petal.Length<6,c('Species')]
summary(factor(m))

======Занятие №4==========
  
eddy=read.csv('eddy.csv',skip = 1)
eddy=eddy[-1,]
write.csv(eddy,'eddy2.csv')
eddy2=read.csv('eddy2.csv')
summary(eddy2)  

stat.desc(eddy2)

ggplot(eddy2,aes(h2o))+geom_histogram()
eddy2==-9999
eddy2[eddy2==-9999]= NA


x=na.exclude(eddy2$h2o_strg)
fitdistr(x,'normal')

ks.test(x,pnorm,mean=y[1],sd=y[2])
y=fitdistr(x,'normal')$estemate
