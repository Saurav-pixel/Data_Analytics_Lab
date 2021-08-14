# Question 3 : Write the above two programs in R using functions.

# greatest of three number
new.greatest_of_three <- function(){
  # taking the user input
  first_number <- as.integer(readline(prompt = "Enter the first number :"))
  
  second_number <- as.integer(readline(prompt = "Enter the second number :"))
  
  third_number <- as.integer(readline(prompt = "Enter the third number :"))
  
  # code for finding the greatest number
  
  if (first_number > second_number && first_number > third_number){
    print(paste("The greatest of three numbers is: ", first_number))
  } else if (second_number > first_number && second_number > third_number) {
    print(paste("The greatest of three number is :", second_number))
  } else {
    print(paste("The greatest of three number is : ", third_number))
  }
} 

# sum of n numbers
new.sum_of_n <- function(){
  n <- as.integer(readline(prompt = "Enter the nth number : "))
  sum_of_numbers <- 0
  
  # for loop
  for (x in 1:n){
    sum_of_numbers <- sum_of_numbers + x
  }
  
  print(paste("The sum of n numbers is :", sum_of_numbers))
}

# calling function
print("Welcome ! to question 3 \n")
print(" 1 . Greatest of Three Number \n")
print(" 2. Sum of n numbers \n")
choice <- as.integer(readline(prompt =" Enter your choice"))
 if(choice == 1){
   new.greatest_of_three()
 }else if (choice == 2){
   new.sum_of_n()
 }else {
   print("Invalid choice !")
   print("Re-run the program and put a valid choice \n")
 }
 