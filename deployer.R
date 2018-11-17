install.packages("dplyr")
install.packages('Rcpp')
library(dplyr)
#DataFrame----
#create vectors to be combined into DF
(rollno = 1:30)
(sname = paste('student',1:30,sep = ''))
(gender = sample(c('M','F'), size=30, replace=T, prob = c(.7,.3)))    # works best for large sample size
(marks1=floor(rnorm(30, mean=50, sd = 10)))
(marks2=ceiling(rnorm(30, 40, 5)))
(course = sample(c('BBA','MBA'), size = 30, replace = T, prob = c(.5,.5)))

rollno;sname;gender
marks1;marks2;course

df1
df1 %>% group_by(gender) %>% summarise(MeanM1 = mean(marks1), MeanM2 = mean(marks2), MaxM2 = max(marks2))

?mtcars
table(mtcars$am)
table(mtcars$cyl, mtcars$am)                                       
xtabs(~cyl+am+vs, data=mtcars)

mtcars %>% group_by(am) %>% summarise(mean(mpg))
mtcars %>% group_by(gear,cyl) %>% summarise(MeanMPG = mean(mpg)) %>% arrange(desc(MeanMPG))

mtcars %>% select(mpg,wt) %>% slice(c(1,5,6))
(odd=seq(1,32,2))
mtcars %>% select(mpg,wt) %>% slice(odd)
mtcars %>% filter(mpg>25 & hp<60) %>% select(mpg,wt)

mtcars %>% sample_n(3) #sampled no of rows
mtcars %>% sample_frac(.2) #sampled % of rows
