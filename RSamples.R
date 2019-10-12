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













