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
library(car)
library(carData)
x3<-factor(x3)
# 2 grup arasinda Varyans testi
leveneTest(x6~x3) 
t.test(x6~x3,var.equal=TRUE)

leveneTest(x19~x3) 
t.test(x19~x3,var.equal=TRUE)






