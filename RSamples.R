# Yorum Satırı
# Ekranı Silme => Ctrl + L
# Satır satır çalıştırma => Ctrl + Enter
# kare **2

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

# 1'den 3'e kadar(3 dahil) 3 tekrarlı ekletir.
x<- rep(1:3, each = 3)
x

#1'den 4'e kadar 4 dahil değerler oluştur.
x <- 1:4
x
#3'den 6'e kadar 6 dahil değerler oluştur.
y <- 3:6
y

x+y
x*y
x>y


#rastgele 100 say üretir. observed değişkenine atar
observed <- rnorm (100)

#rastgele 100 say üretir. predicted değişkenine atar
predicted <- rnorm (100)

#observed - predicted farkını alıp karesini alıp ortalamlarını alır.
mse <- mean((observed - predicted)**2)
mse


#Matrix'ler
M <- matrix (1:6, nrow= 3)
M

#Sonuç:
#       [,1] [,2]
#[1,]    1    4
#[2,]    2    5
#[3,]    3    6

#ilk önce satırları doldurmak için 
M <- matrix (1:6, nrow= 3, byrow=TRUE)
M
#Sonuç : Satırlardan başlayarak doldurdu.
#     [,1] [,2]
#[1,]    1    2
#[2,]    3    4
#[3,]    5    6

# 2. satır 1. sütunu getirir.
M[2,1]

# 2. satırı getir.
M[2,]

# 2. sütunu getir.
M[,2]



#Matris'ler
M <- matrix(1:6,ncol=3)
N <- matrix(3:8,ncol=3)

M+N
M*N

#Matris çarpımı
M %*% N



#Data Frame'ler
mtcars

#satırlar = gözlem
#sütunlar = değişken

#ilk 6 satırı getirir
head(mtcars)

#ilk 3 satırı getirir
head(mtcars,3)

#son altı satırı getirir
tail(mtcars)

#verinin öniizlemesini yapar
str(mtcars)



#runif min ve max vermezsek 0 ile 1 arası değerler üretir.

#rastgele 10 değer üret ve 0.5'den büyükse Erkek değilse kadın olarak belirle 
gender <- ifelse(runif(10)>0.5, "Male", "Female")
gender
class(gender)

#Nominal Kategorik Değişken
#Kategorik değişken olarak ayırmış oldu.
gender_f <-factor(gender)
gender_f

#Değişkenler arasından değer seçer
sample(c("A","B","C","D","F"))

#Ordinel Kategorik Değişken
#Kategorik değişkenlerin sıralaması önemli olduğunda kullanılır
grade <- sample(c("A","B","C","D","F"), size = 20, replace = TRUE)
#size : üretilecek miktarı verir
#replace : değer ürettikten sonra içini boşaltmadan tekrar aynı değeri koyar.
grade
grade <- factor(grade)
grade

#sıralama yapmak için ordered kullanılır.
grade <- factor(grade, ordered = TRUE)
grade

#Küçükten büyüğe sıralama tanımlamak için level kullanılır.
grade <- factor(grade, ordered = TRUE, levels = c("F","D","C","B","A"))
grade

#============================================================================
id <- 1:10
age <- as.integer(runif(10, min =20, max = 40))
gender <- ifelse(runif(10)>0.5, "Male", "Female")

df <- data.frame(id,age,gender)
df

#birinci satırı verir
df[1,]

#2. ve 3. sütunu verir.
df[, 2:3]

#age sütununu verir
df[,"age"]


#female'lerin yaşlarının ortlaamasını bulun?
  ix_female <-  df[,"gender"]== "Female"
  ix_female
  
  #Kadınların yaşlarını ver
  df[ix_female,"age"]
  
  #bu yaşların ortalamarını ver
  mean(df[ix_female,"age"])

#List Veri Tipi
#Farklı tipdeki değişkenleri tutar.

#Vektör
my_vec <- 1:10

#matris
my_mat <- matrix(my_vec,ncol=5)

#dataframe
my_df <- mtcars[1:5,]

#listeye yukarıda tanımladığımız , vektör, matris ve dataframe'i ekliyoruz. 
my_list <- list(vec=my_vec,
                mat = my_mat, 
                df= my_df)
my_list

#my_list içindeki dataframe'deki mpg sütununa erişimek için kullanılır.
my_list$df$mpg

#tidyverse kütüphanesini yüklemek için kullanılır.
#install.packages("tidyverse")

library(tidyverse)
#sütunların data tiplerini vermedik. Bu yüzden sistem ilk 100 satıra bakar ve kendi yorumlar
nba <- read_csv("R/Seasons_Stats.csv")

# Hata payını düşürmek için ilk 5000 satıra bakmasını istediğimizde aşağıdaki parametre kullanılır.
nba <- read_csv("R/Seasons_Stats.csv", guess_max = 20000)
View(nba)

glimpse(nba)
nba
#nba değişkeninde Player sütununu getirir
select(nba,Player)
#nba değişkeninde Player ve Age sütunlarını getirir
select(nba,Player,Age)

#nba değişkeninde Player ve Age'den MP'ye kadar tüm sütunları sırayla getirir
select(nba,Player, Age:MP)

#nba değişkeninde Player ve GS olmayan tüm sütunları sırayla getirir
select(nba,Player,-GS)

#nba değişkeninde Player, Age, Pos, PTS'den sonra tüm sütunları sırayla getirir
select(nba,Player,Age,Pos,PTS,everything())

#Sütunlarda "FG" ile başlayan sütunları getirir
select (nba, starts_with("FG"))
#Sütunlarda "%" ile biten sütunları getirir
select (nba, ends_with("%"))
#Sütunlarda "RB" içeren sütunları getirir
select (nba, contains("RB"))
#Sütunlarda "X1" sütununun ismini "index" ile değiştirir.
rename(nba,index=X1)



# , and için kullanılır. | ise veya amacı ile kullanılır.
#satırlarda işlem yapmak için filter kullanılır
filter(nba,Age >25)

filter(nba,Age >25 | Year >2010)

filter(nba,between(Age, 22,26))

#Pozisyonu Guard olanlar için kullanılır.
filter(nba,Pos=="G")

#regular expression ile kullanmak için ise
#Sonu G ile biten filtrelemelerde kullanılır.
filter(nba, grepl("G$",Pos))

mutate(nba, PPG = PTS / G)

transmute(nba,PPG= PTS /G)

summarise(nba, meanPTS = mean(PTS, na.rm = TRUE))

#nba değişkenindeki Tm sütununa göre grupla
df <- group_by(nba, Tm)
#gruplanan Tm sutununa göre takımların sezonluk ortalamalarını alır.
summarise(df, meanPTS = mean(PTS,na.rm= TRUE))


df1 <- select(nba, Player, Age, Pos, Tm, G, PTS, Year)
df2 <- mutate (df1, PPG = PTS/G)
# is.na ilgili alanın boş olanlarını getirir. ! değil anlamına gelir
df3 <- filter (df2, !is.na(PPG), Year >1990)
df4 <- group_by(df3, Tm, Pos)
summarise(df4, meanPPG = mean (PPG, na.rm = TRUE), count=n())


#MP: Bir sezondaki oynadığı dakika
#PTS : Bir sezondaki attığı sayı
# n() kaç satır olduğunu verir.

df1 <- select (nba, Player, MP, PTS)
df2 <- mutate (df1, PP48M = (PTS/MP)*48)
df3 <- filter (df2, !is.na(PP48M))
df4 <- group_by(df3,Player)
df5 <- summarise(df4 , meanPP48M= mean(PP48M), season = n())
df6 <- filter(df5, season > 4)
df7 <- arrange(df6,desc(meanPP48M))


#yukarıdakine eşit olarak aşağıdaki de yazılabilir
nba %>% 
  select(Player,MP,PTS) %>% 
  mutate(PP48M = (PTS/MP)*48) %>% 
  filter(!is.na(PP48M)) %>% 
  group_by(Player) %>% 
  summarise(meanPP48M = mean(PP48M,na.rm =TRUE), season = n())   %>% 
  filter(season>=5)  %>% 
  arrange(desc(meanPP48M))


#%in% içerenleri getirir
#=============================================================================
df <- nba %>%
  select(Player, Age, Year, PTS, G)%>%
  mutate (PPG = PTS /G)%>%
  filter (!is.na(PPG)) %>%
  filter(Player %in% c("Michael Jordan*",
                       "Kevin Durant",
                       "LeBron James",
                       "Carmelo Anthony"))
  
       
  ggplot(df,aes(x = Age, y = PPG)) +
        geom_point(size = 3,  color = "red") +
        geom_smooth(size = 0.5, color = "green")
  



