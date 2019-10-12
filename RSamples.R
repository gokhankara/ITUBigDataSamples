#Yorum Satırı
#Ekranı Silme => Ctrl + L
# Satır satır çalıştırma => Ctrl + Enter

#Assigment Operatörü
x = 5

# R'da kullanılan Assigment Operatörü
x <- 4

# bir satırda birden fazla satır yazmak için ; kullanılır.
a <- 3 ; b <-4;

# ax^2 +bx + c
#x1 = (-b + (b2 - 4ac)/2)/2a
#x1 = (-b - (b2 - 4ac)/2)/2a



a <- 3 ; b <-4;
c<- -1
x1 <- (-b + sqrt(b**2-4*a*c))/2/a
x2 <- (-b - sqrt(b**2-4*a*c))/2/a

#Karşılaştırma Operatörleri
# print (x1 <= x2)
# print (x1 < x2)
# print (x1 == x2)
# print (x1 != x2)


#Mantıksal Operatörler
#print (!(x1>x2 & 3<5))

#Veri Tipleri
  #Numerik Tipler
  # x <- 5
  # class(x)
  
  #Tamsayı - İnteger Tipler
  # x <- 5L
  # class(x)
  
  #Logical Tipler
  # x <- TRUE
  # class(x)

  #String - Karakter Tipler
  # x <- "KHello World"
  # class(x)

#Vektörler
x <- c(30,40,-20,-10,50)
ix <- c(TRUE,TRUE,FALSE,TRUE,FALSE)
x[ix]


# X pozitif değerlerini bulalım
x <- c(30,40,-20,-10,50)
ix <- x>0
x[ix]

#Random sayı üretme
#3 ile 10 arasında 10 tane sayı üretme
x <- runif(10, min = 3, max = 10)
#Ortalaması 5 olan standart sapması 1.3 olan 10 sayı
x <- rnorm(10,mean = 5, sd=1.3)

# 100 tane sayı üretip x değişkenine atayalım sonra da -0,5 ile 0,5 arasondaki değerleri 0 yapalım.
x <- rnorm(100)
ix <-  x > -0.5 &  x < 0.5
ix
x[ix]<-0
x


#vektörler üzerinde kullanılabilecek fonksiyonlar
#vektörün toplamını verir
sum(x)
#vektörün ortlamasını verir
mean(x)
#vektörün kapasitesini verir
length(x)

# 3'den başla 13'e kadar 4'er 4'er ilerle
x <- seq(3,13,by=4)

#3 ile 13 arasında eşit aralıklarda 7 tane sayı üretme
x <- seq(3,13,length.out = 7)
x

# aşağıdaki vektörü 3 defa tekrarlatır.
x<- rep(1:3, times = 3)
x








