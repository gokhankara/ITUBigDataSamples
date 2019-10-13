library(readxl)
HBAT <- read_excel("R/HBAT.xlsx")

View(HBAT)

# HBAT değişkenindeki değişken-Sütunlara erişmeyi sağlar.
attach(HBAT)

## Tanımlayıcı istatistik
boxplot(x6)
summary(x6)
boxplot(x7~x5,col=rainbow(7))
hist(x7)
stem(x7)
shapiro.test(x7)

library(nortest)
lillie.test(x7)


install.packages("psych")
library(psych)
describe(x6)

skew(x7)
kurtosi(x7)
sd(x7)

install.packages("car")
library(car)
qqPlot(x7)

#x6:Kalite , x13: Fiyat eğrisini verir
#Grafik bize Kalite arttıkça fiyatın düştüğünü gösteriyor.
library(stats)
scatterplot(x6,x13)
# Normallik Testi, P değeri %5'in altındaysa kabul ediyoruz. Neden %5'i alıyoruz? %95'i biz belirlediğimiz için %5 hata payı vardır.
shapiro.test(x6)

hist(x6)

shapiro.test(x6)
install.packages("nortest")
library(nortest)
lillie.test(x6)




# t test
graphics.off()
par("mar")
par(mar=c(1,1,1,1))
boxplot(x6)
summary(x6)
IQR(x6)
t.test(x6)
qt(0.025,99)

# 7.532948 8.087052 aşağıdaki sonuç çıkar. Bu da %95 ihtimal ile 7.532948 - 8.087052 değerler arasında çıkacağını gösterir.
# Bir diğer deyişle Ben projeyi %95 ihtimal ile 7 ile 9 günde bitirebilirim. % 5 ihtimal ile 7 günden önce yada 9 günden sonra da bitebilir.
t.test(x6,mu=8.08)
# P değeri referans değeri bu değer %5'den büyük olduğu için normalde kabul etmemek gerekir ama örnek küme olduğu için ve fark da çok az olduğu için kabul edilebilir.
qt(0.025,100)


# Independent t test (Equal variances assumed)
# Birbirinden bağımsız iki ana kütle varsa;
# Örnek, iki farklı grup olması gerekir. 2 farklı 9. sınıf öğrencilerine sınav yapmak gibi;
library(car)
library(carData)
x3<-factor(x3)
# 2 grup arasinda Varyans testi
leveneTest(x6~x3) 
t.test(x6~x3,var.equal=TRUE)

leveneTest(x19~x3) 
t.test(x19~x3,var.equal=TRUE)

# Independent t test (Not Equal variances assumed)
t.test(x19~x3)
t.test(x6~x3, alternative='less',mu=0.8)
t.test(x6~x3, alternative='greater',mu=0.2)













# Paired t test
t.test(x6~x3,Paired = TRUE)


# independent 2-group Mann-Whitney U Test (Nonparametric test)
# y metrik, x ikili değişken
wilcox.test(x6~x3) 

# Nonparametric Paired Test
wilcox.test(x6,x7, paired=TRUE) # x ve y metrik 




# Anova
x1<-factor(x1)
boxplot(x19~x1,col=rainbow(7))
model<-aov(x19~x1)
summary(model)
leveneTest(x19~x1)
library(PMCMRplus)
# Varyanslar ayni degil ise Tamhane test
tamhaneT2Test(x19~x1)
# Varyanslar ayni ise Tukey
TukeyHSD(model)
library(mvtnorm)
library(DunnettTests)
qf(0.95,2,97)
dunnettTest(x19~x1)


# Two way Anova
x4<-factor(x4)
model<-aov(x19~x1*x4)
summary(model)
TukeyHSD(model)
table(x1,x4)

#Correlation
install.packages("corrplot")
library(corrplot)
HBAT1<-HBAT[ ,7:19]
corrplot(cor(HBAT1), order = "hclust", tl.col='black', tl.cex=.75) 
corrplot(cor(HBAT1), order = "hclust") 
corrplot(cor(HBAT1), method = "ellipse")
library(car)
attach(HBAT)
scatterplot(x18,x9)

cor(x18,x9)
cor.test(x18,x9)
cor.test(x15,x18)
cor.test(x10,x14)
cor(x10,x14)
cor.test(x10,x14)


