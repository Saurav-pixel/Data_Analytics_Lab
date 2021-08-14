# Question 5. WAP in R to find the sum of n natural numbers without formula

print("Welcome to Question 5 \n ")
n <- as.integer(readline(prompt = "Enter the nth number : "))

if(n < 0){
  print("Enter positive number \n")
}else {
  sum_of_numbers <- (n *(n+1)) / 2
}
print(paste("Sum of n numbers is :",sum_of_numbers ))

