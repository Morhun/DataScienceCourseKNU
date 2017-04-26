#1.	Функція add2(x, y), яка повертає суму двох чисел.

add2<-function(x,y){x+y}
add2(1,1)
##[1] 2

#2.	Функція above(x, n), яка приймає вектор та число n, та повертає всі елементі вектору, які більше n. По замовчуванню n = 10.

above<-function(x,n=10){x[x>n]}
v<-c(1,3,4)
above(v,2)
##[1] 3 4

#3.	Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його елементи за допомогою exp з n, та повертає елементи вектору, які відповідають умові expression. Наприклад, my_ifelse(x, “>”, 0) повертає всі елементи x, які більші 0. Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”. Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.

my_ifelse <- function(x, exp, n) {
    if (exp == "<") {
        return(x[which(x < n)])
    } else if (exp == ">") {
        return(x[which(x > n)])
    } else if (exp == "<=") {
        return(x[which(x <= n)])
    } else if (exp == ">=") {
        return(x[which(x >= n)])
    } else if (exp == "==") {
      return(x[which(x == n)])
    } else {
        return(x)
    }
}
v <- c(137, 131, -22, 35, 411)
print(my_ifelse(v, ">", 31))

##[1] 137 131  35 411

#4.	Функція columnmean(x, removeNA), яка розраховує середнє значення (mean) по кожному стовпцю матриці, або data frame. Логічний параметр removeNA вказує, чи видаляти NA значення. По замовчуванню він дорівнює TRUE.
columnmean<- function(x, removeNA=TRUE){
  res<-c()
  for (el in 1:ncol(x)){
    res<-c(res, mean(x[ ,el], na.rm=removeNA))
  }
  return(res)
}

y <- data.frame(a = rnorm(100), b = 1:1000, cc = rnorm(1000))
m <- matrix(data=c(0.5,3.9,0,2,1.3,NA,2.2,7,NA,2.8,4.6,5.1),ncol=3)

columnmean(y, FALSE)
## [1] -0.10828109 500.50000000   0.01095201
columnmean(m, TRUE)
## [1] 0.5 3.9 0.0
