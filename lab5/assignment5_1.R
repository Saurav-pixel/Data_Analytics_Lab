# Question 1
# (a) Import mtcars dataset.
# (b) Visualize your data using scatter plots
# (c) Compute the Correlation between mpg and wt variables.

data("mtcars")
head(mtcars, 2)  # loading and looking upto two tuples of dataset mtcars 

# description of the dataset
nrow(mtcars) # number of rows in the dataset
ncol(mtcars) # number of columns in the dataset
?mtcars # get extra information for the dataset. We need this information for plotting 
        # the scatter plot of the dataset
summary(mtcars) # summary of the dataset
is.na(mtcars) # checking whether there is any null value in the dataset


# SCATTER PLOT FOR DATA VISULAISATION
library(paletteer)
# Number of cylinders vs No. of gross horsepower
color1 <- c("red","blue")
input1 <- mtcars[,c('cyl','hp')]
plot(x = input1$cyl,y = input1$hp,
     xlab = "Number of Cylinders",
     ylab = "Gross Horsepower",
     main = "Number of Cylinder vs Gross Horsepower",
     col = color1)

# Miles/(US) gallon vs Numbers of Cylinder
color2 <- c("red","green")
input2 <- mtcars[,c('cyl','mpg')]
plot(x = input2$cyl, y= input2$mpg,
     xlab="Number of cylinders",
     ylab="Miles/(US) gallon",
     main =" Cyl vs MPG",
     col = color2,
     cex = 1,
     pch = 16)
#Compute the Correlation between mpg and wt variables.
cor(mtcars$wt, mtcars$mpg)
