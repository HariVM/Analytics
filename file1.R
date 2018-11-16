#data structures in R
#vectors----
x=LETTERS[1:10]
class(x)
(x6= seq(0,100,by=3))
x6[c(3,6)]                #display elements
x6[-c(3,6)]               #remove elements
x6[x6>30 & x6 < 40]

(x5=sample(1:50))
sort(x5)
x5
sort(x5[-c(1,2)])       #remove elements before sorting
sort(x5, decreasing = T)
rev(x5)
sum(x6[x6>30 & x6<40])    #sum of nos from 30 to 40
x6[2:10] <- 99;x6         #replace elements 2-10 by 99
x6[x6>30 & x6<40] <- 999; x6

(x4=seq(1,5,length.out = 15))


x=NULL
(x=rnorm(10000000))
plot(density(x))
mean(x)
abline(v=mean(x),h=0.04)
hist(x,freq = F)
lines(density(x),col=2)

#matrix----
(m1 = matrix(100:111, nrow=4))
(m2 = matrix(100:111, nrow=4, byrow = T))
#matrix can only have one datatype

m1[1,]; 
m1[,-2] #shows without column number 2
m1[c(1,2),]
m1[,-c(1,3)]
m1[m1>105 & m1<108]

#names to rows and columns
m1
paste("c","d",sep = "-")
paste("c",1:100,sep = "-")
(colnames(m1) = paste('C',1:3,sep = "-"))
m1
(rownames(m1) = paste('R',1:4,sep = "-"))
(m1[,c('C-1','C-3')])


colSums(m1); rowSums(m1)
colMeans(m1); rowMeans(m1)


m2=matrix(1:20, ncol = 4)
m2
rbind(m2,c(50,60,70,80))
cbind(m2,m2)

t(m2)
m1
sweep(m1,MARGIN = 1, STATS = c(2,3,4,5), FUN = "+") #rowwise - margin=1
sweep(m1,MARGIN = 2, STATS = c(2,3,4), FUN = "+") #colwise - margin=2
addmargins(m1,margin = 1,sum) #add sum to bottom

addmargins(m1,c(1,2),sum)   #add sum to bottom and right


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

#create dataframe
df1=data.frame(rollno,sname,gender,marks1,marks2,course, stringsAsFactors = F)
str(df1) #structure of df
head(df1) #top 6 rows
head(df1, n=3) #top 3 rows
tail(df1) #last 6 rows
class(df1)
summary(df1)
df1
df1$gender = factor(df1$gender)
df1$course = factor(df1$course)
str(df1)
summary(df1)
df1$gender #only gender column
head(df1[,c(2,4)]) #multiple columns
df1[1:5, 1:4]
#conditional
df1[marks1>50 & gender=='F', ]
df1[marks1>50 & gender=='F', ][3:5]

names(df1); dim(df1) # names and dimension

aggregate(df1$marks1, by=list(df1$gender,df1$course), FUN=sum)
aggregate(df1$marks1, by=list(df1$gender), FUN=sum)
aggregate(marks1 ~ gender, data = df1, FUN = max)
aggregate(cbind(marks1,marks2)~gender, data=df1, FUN = max)

(df2=aggregate(cbind(marks1,marks2)~gender + course, data=df1, FUN = max))


#Factor----

(grad)