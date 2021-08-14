# Question 6 : Simple calculator in R

new.addition <- function(){
  print(" ********************** ")
  print("    Additon  ")
  print(" ********************* ")
  n <- as.integer(readline(prompt = "How many numbers you want to add : "))
  val <- c()
  print("Enter numbers you want to add ")
  for (i in 1:n){
    val[i] <- as.integer(readline())
  }
  
  # printing the vector
  print("The numbers we want to add ")
  print(val)
  
  # sum 
  addition <- sum(val)
  print(paste("result of addition :", addition))
}


# substraction
new.subtraction <- function(){
  print(" *******************")
  print("      SUBTRACION    ")
  print(" ******************* ")
  first_number <- as.integer(readline(prompt = "Enter the first number :"))
  second_number <- as.integer(readline(prompt = "Enter the second number :"))
  ans = first_number - second_number
  print(paste("result of subtraction :", ans))
  
}

# multiplication 
new.multiplication <- function(){
  print(" *******************")
  print("     MULTIPLICATION    ")
  print(" ******************* ")
  first_number <- as.integer(readline(prompt = "Enter the first number :"))
  second_number <- as.integer(readline(prompt =  "Enter the second number :"))
  ans = first_number * second_number
  print(paste("result of multiplication :", ans))
}

# divison
new.divison <- function(){
  print(" *******************")
  print("      DIVISION    ")
  print(" ******************* ")
  first_number<- as.integer(readline(prompt = " Enter the first number : "))
  second_number <- as.integer(readline(prompt = "Enter the second number : "))
  ans = first_number / second_number 
  print(paste("result of divison :", ans))
}

# modulo operator
new.modulo <- function(){
  print(" *******************")
  print("      MODULO OP    ")
  print(" ******************* ")
  first_number <- as.integer(readline (prompt  = " Enter the first number :"))
  second_number <- as.integer(readline( prompt = "Enter the second number : "))
  ans = first_number%% second_number
  print(paste("result of modular operation :", ans))
}

# power
new.power <- function(){
  print(" *******************")
  print("      power    ")
  print(" ******************* ")
  first_number <- as.integer(readline (prompt  = " Enter the base :"))
  second_number <- as.integer(readline( prompt = "Enter the exponent : "))
  ans = first_number ^ second_number
  print(paste("result of power :", ans))
}

# square
new.square <- function(){
  print(" *******************")
  print("      SQUARE   ")
  print(" ******************* ")
  number <- as.integer(readline(prompt = "Enter number : "))
  ans = number * number
  print(paste("SQUARE  :", ans))
}

# square root 
new.sqareroot <- function(){
  print(" *******************")
  print("      SQUARE ROOT    ")
  print(" ******************* ")
  number <- as.integer(readline(prompt = "Enter sqare of number: "))
  ans <- sqrt(number)
  print(paste("Square root of number is ", ans))
  
}

# cube 
new.cube <- function(){
  print(" *******************")
  print("      CUBE    ")
  print(" ******************* ")
  number <- as.integer(readline(prompt = "Enter number : "))
  ans = number * number * number
  print(paste("CUBE :", ans))
}


# natural log
new.logarithm <- function(){
  print(" *******************")
  print("      NATURAL LOG    ")
  print(" ******************* ")
  number <- as.integer(readline(prompt = "Enter number"))
  ans <- log(number)
  print(paste ("natural log of the number is  :", ans))
}
# driver function
print("Calculator ")
print(" Enter your choice ")
print(" 1. Addition ")
print(" 2. Subtraction ")
print(" 3. Multiplication ")
print(" 4. Division ")
print(" 5. Modulo Operator")
print(" 6. Power ")
print(" 7. Square of a Number ")
print(" 8. Square root of a  Number ")
print(" 9. Cube of a Number ")
print("10. Natural Log ")


# choice
choice <- as.integer(readline(prompt = "Enter your Choice :"))
# condition
if (choice == 1){
  new.addition()
}else if(choice == 2) {
  new.subtraction()
} else if (choice == 3){
  new.multiplication()
} else if (choice == 4){
  new.divison()
} else if (choice == 5){
  
  new.modulo()
} else if (choice == 6){
  new.power()
} else if (choice == 7){
  new.square()
} else if(choice == 8 ){
  
  new.sqareroot()
}else if (choice == 9){
  new.cube()
  
} else if(choice == 10){
  new.logarithm()
} else {
  print("Invalid choice !")
  print("Re-run the program and put a valid choice \n")
}
