#Для лабораторної роботи необхідно завантажити файл з даними за посиланням: «https://www.dropbox.com/s/8k1gjgk8cflmpb6/hw1_data.csv?dl=0».
#В RStudio файл необхідно прочитати за допомогою команди read.csv

d=read.csv("/home/morhun/DataScienceCourseKNU/hw1_data.csv")

#В лабораторній необхідно відповісти на запитання:
#1.	Які назви стовпців файлу даних?
names(d)
##[1] "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day"

#2.	Виведіть перші 6 строк фрейму даних.
d[1:6,]
##  Ozone Solar.R Wind Temp Month Day
## 1    41     190  7.4   67     5   1
## 2    36     118  8.0   72     5   2
## 3    12     149 12.6   74     5   3
## 4    18     313 11.5   62     5   4
## 5    NA      NA 14.3   56     5   5
## 6    28      NA 14.9   66     5   6

#3.	Скільки спостерігань (строк) в дата фреймі?
nrow(x)
## [1] 153

#4.	Виведіть останні 10 строк дата фрейму.
tail(x,10)
##    Ozone Solar.R Wind Temp Month Day
## 144    13     238 12.6   64     9  21
## 145    23      14  9.2   71     9  22
## 146    36     139 10.3   81     9  23
## 147     7      49 10.3   69     9  24
## 148    14      20 16.6   63     9  25
## 149    30     193  6.9   70     9  26
## 150    NA     145 13.2   77     9  27
## 151    14     191 14.3   75     9  28
## 152    18     131  8.0   76     9  29
## 153    20     223 11.5   68     9  30

#5.	Як багато значень «NA» в стовпці «Ozone»?
sum(is.na(x$Ozone))
##[1] 37

#6.	Яке середнє (mean) стовпця «Ozone». Виключити «NA» значення.
mean(x$Ozone, trim=0, na.rm = TRUE)
##[1] 42.12931

#7.	Виведіть частину набору даних (subset) зі значенням «Ozone» > 31 та «Temp» > 90. Яке середнє (mean) значень «Solar.R» в цьому наборі даних (subset)?
subset(subset(x,Ozone>31), Temp>90)
##    Ozone Solar.R Wind Temp Month Day
## 69     97     267  6.3   92     7   8
## 70     97     272  5.7   92     7   9
## 120    76     203  9.7   97     8  28
## 121   118     225  2.3   94     8  29
## 122    84     237  6.3   96     8  30
## 123    85     188  6.3   94     8  31
## 124    96     167  6.9   91     9   1
## 125    78     197  5.1   92     9   2
## 126    73     183  2.8   93     9   3
## 127    91     189  4.6   93     9   4

subs<-subset(subset(x,Ozone>31), Temp>90)
mean(subs$Solar.R,trim=0, na.rm = TRUE)
## [1] 212.8

#8.	Яке середнє значення (mean) для «Temp» для червня («Month» дорівнює 6)?
subb<-subset(x, Month==6)
mean(subb$Temp, trim=0, na.rm = TRUE)
## [1] 79.1

#9.	Яке максимальне значення «Ozone» для травня («Month» дорівнює 5)?
subbb<-subset(x, Month==5)
max(subbb$Ozone,na.rm = TRUE)
## [1] 115
