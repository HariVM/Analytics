install.packages('wordcloud2')
library(wordcloud2)

head(demoFreq)
wordcloud2(demoFreq, size=2, color = "random-dark", backgroundColor = "white")
names(demoFreq)
wordcloud2(demoFreq, size = 2, minRotation = -pi/6, maxRotation = -pi/2)
wordcloud2(demoFreq, size = 2, minRotation = -pi/6, maxRotation = -pi/2, rotateRatio = 4)
