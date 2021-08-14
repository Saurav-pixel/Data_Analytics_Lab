# Question 2 : Write a program in R to find and display the sum of N natural numbers

n <- as.integer(readline(prompt = "Enter the nth number : "))
sum_of_numbers <- 0

# for loop
for (x in 1:n){
  sum_of_numbers <- sum_of_numbers + x
}

print(paste("The sum of n numbers is :", sum_of_numbers))
