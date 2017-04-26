#1. Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical.

v1 <- "stats"
class(v1)
## [1] "character"

v2 <- -10.6
class(v2)
## [1] "numeric"

v3 <- 3L # L вказує що це ціле число
class(v3)
## [1] "integer"

v4 <- 3+2i
class(v4)
## [1] "complex"

v5 <- TRUE
class(v5)
## [1] "logical"


#2.	Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 2.71, 0, 13; 100 значень TRUE.

vector1 <- 5:75
## [1]  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29
## [26] 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
## [51] 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75

vector2 <- c(3.14, 2.71, 0,13)
## [1]  3.14  2.71  0.00 13.00

 help <- 1:100
 as.logical(help)
## [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
## [16] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
## [31] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
## [46] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
## [61] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
## [76] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
## [91] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE


#3.	Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind
##0.5	1.3	3.5
##3.9	131	2.8
##0	2.2	4.6
##2	7	5.1

mat1 <- matrix(data=c(0.5,3.9,0,2,1.3,131,2.2,7,3.5,2.8,4.6,5.1),ncol=3)
mat1
##      [,1]  [,2] [,3]
## [1,]  0.5   1.3  3.5
## [2,]  3.9 131.0  2.8
## [3,]  0.0   2.2  4.6
## [4,]  2.0   7.0  5.1

a<-c(0.5,3.9,0,2)
b<-c(1.3,131,2.2,7)
c<-c(3.5,2.8,4.6,5.1)
cbind(a,b,c)
##        a     b   c
## [1,] 0.5   1.3 3.5
## [2,] 3.9 131.0 2.8
## [3,] 0.0   2.2 4.6
## [4,] 2.0   7.0 5.1


#4. Створити довільний список (list), в який включити всі базові типи.

l <- list("stats",-10.6,3L,TRUE,3+2i)
l

## [[1]]
## [1] "stats"

## [[2]]
## [1] -10.6

## [[3]]
## [1] 3

## [[4]]
## [1] TRUE

## [[5]]
## [1] 3+2i


#5.	Створити фактор з трьома рівнями «baby», «child», «adult».
f<-factor(c("baby","child","adult","adult"))
f
## [1] baby  child adult adult
## Levels: adult baby child


#6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA.

mv<-c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)

is.na(mv)
##  [1] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE

match(NA,mv)
## [1] 5

x<-factor(is.na(mv))
table(x)
x
## FALSE  TRUE 
##     8     3 


#7.	Створити довільний data frame та вивести в консоль.

cause <- c('pilot error', 'mechanical', 'weather', 'sabotage', 'other')
amount <- c(640, 195, 63, 95, 111)
plane_crash <- data.frame(cause, amount)
plane_crash
##        cause amount
## 1 pilot error    640
## 2  mechanical    195
## 3     weather     63
## 4    sabotage     95
## 5       other    111


#8.	Змінити імена стовпців цього data frame.
colnames(plane_crash)[1]<-"c"
colnames(plane_crash)
## [1] "c"      "amount"
