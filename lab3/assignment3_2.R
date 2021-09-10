PAICOL <- read.csv("E:/puchu/data_analytics_lab/assignment_3/PAICOL.txt")
PAICOL

summary(PAICOL)
View(PAICOL)

# Question 2(a)
install.packages("ggplot2")
library(ggplot2)
ggplot(data= PAICOL, aes(DATE,LEVEL))+geom_line()

# Question 2(b)
ggplot(data = PAICOL, aes(RAIN,LEVEL))+geom_point()

# Question 2(c)
ggplot(PAICOL, aes(DATE,LEVEL))+geom_line(aes(color="LEVEL"))+geom_line(data = PAICOL,aes(DATE, RAIN, color="RAIN"))
# Question 2(e)
PAICOL$YEAR = as.numeric(format(PAICOL$DATE, "%Y"))
index_2001 = PAICOL$YEAR==2001
ggplot(PAICOL[index_2001],aes(DATE,LEVEL))+geom_line(aes(color = "LEVEL"))


