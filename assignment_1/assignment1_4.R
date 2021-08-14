# Question 5 : WAP in R to find the multiplication table from (1 to 10)

# multiplication function
new.multiplication <- function(){
  mul <- 1
  for (x in 1:10){
    mul <- mul * x
  }
  print(paste("The multiplicatioin is :",mul))
}

# driver code
print("Welcome! to Question 4")
new.multiplication()
