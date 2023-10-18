#Worksheet_1

#1 Set up a vector named age,
age <-c (34, 28, 22, 36, 27, 18, 52, 39, 42, 29,35, 31, 27,22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,51, 35, 24, 33, 41)
age

#How many data points?
length(age)

#Write the R code 
age <-c (34, 28, 22, 36, 27, 18, 52, 39, 42, 29,35, 31, 27,22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,51, 35, 24, 33, 41)

# output
age  #[1] 34 28 22 36 27 18 52 39 42 29 35 31 27 22 37 34 19 20 57 49 50 37 46 25 17 37 42 53 41 51 35 24 33 41





#2 Find the reciprocal of the values for age
#Write the R code 
reciprocals <- 1 / age
reciprocals

#Output 
reciprocals #[1] 0.02941176 0.03571429 0.04545455 0.02777778 0.03703704 0.05555556 0.01923077 0.02564103 0.02380952 0.03448276 0.02857143 0.03225806
#[13] 0.03703704 0.04545455 0.02702703 0.02941176 0.05263158 0.05000000 0.01754386 0.02040816 0.02000000 0.02702703 0.02173913 0.04000000
#[25] 0.05882353 0.02702703 0.02380952 0.01886792 0.02439024 0.01960784 0.02857143 0.04166667 0.03030303 0.02439024








#3 Assign also new_age <- c(age, 0, age)
new_age <- c(age, 0, age)
new_age

#What happen to the new_age? 
#ANSWER: The new_age vector will contain the values from the age





#4 Sort the values for age.
#Write the R code
sorted_age <- sort(age)
sorted_age 

# Output
sorted_age  #17 18 19 20 22 22 24 25 27 27 28 29 31 33 34 34 35 35 36 37 37 37 39 41 41 42 42 46 49 50 51 52 53 57



#5 Find the minimum and maximum value for age
#Write the R code 
# Find the minimum age
min_age <- min(age)
min_age
# Find the maximum age
max_age <- max(age)
max_age

# Output
min_age # Minimum age 17
max_age # Maximum age 57





#6 Set up a vector named data, consisting of 2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3,2.5, 2.3, 2.4, and 2.7. 
#a How many data points?
length(data)

#b. Write the R code 
data <-c (2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3,2.5, 2.3, 2.4, 2.7)
data

# output
data  #2.4 2.8 2.1 2.5 2.4 2.2 2.5 2.3 2.5 2.3 2.4 2.7




#7 Generates a new vector for data where you double every value of the data.
doubled_vector_data <- data * 2
doubled_vector_data


#What happen to the data?  it double the values of each data.




#Generate a sequence for the following scenario:
#*8.1 Integers from 1 to 100
sequence_8.1 <- 1:100
sequence_8.1 

#*8.2 Numbers from 20 to 60
sequence_8.2 <- 20:60
sequence_8.2 

#*8.3 Mean of numbers from 20 to 60
mean_8.3 <- mean(sequence_8.2)
mean_8.3     

#*8.4 Sum of numbers from 51 to 91
sum_8.4 <- sum(51,91)
sum_8.4      


#*8.5 Integers from 1 to 1,000
sequence_1_to_1000 <- seq(1, 1000, by = 1)
sequence_1_to_1000 

#a. How many data points from 8.1 to 8.4?
sum( 100 + 41  + 1 + 41  )
sum

#b. Write the R code from 8.1 to 8.4.
# 8.1 Integers from 1 to 100
sequence_8.1 <- 1:100

# 8.2 Numbers from 20 to 60
sequence_8.2 <- 20:60

# 8.3 Mean of numbers from 20 to 60
mean_8.3 <- mean(sequence_8.2)

# 8.4 Sum of numbers from 51 to 91
sum_8.4 <- sum(51,91)

# Output
sequence_8.1 # Output for 8.1  [1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22  23
# [24]  24  25  26  27  28  29  30  31  32  33  34  35  36  37  38  39  40  41  42  43  44  45  46
# [47]  47  48  49  50  51  52  53  54  55  56  57  58  59  60  61  62  63  64  65  66  67  68  69
#[70]  70  71  72  73  74  75  76  77  78  79  80  81  82  83  84  85  86  87  88  89  90  91  92
# [93]  93  94  95  96  97  98  99 100

sequence_8.2 #output for 8.2  [1] 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
#[32] 51 52 53 54 55 56 57 58 59 60

mean_8.3     # Output for 8.3  40
sum_8.4      # Output for 8.4  142



# c. For 8.5 find only maximum data points until 10.
max_data_points_until_10 <- seq (10)
max_data_points_until_10



#9.*Print a vector with the integers between 1 and 100 that are not divisible by 3, 5 and 7 using filter option.          


sequence <- seq(1:100)
Filter(function(i) {all(i %% c(3,5,7) != 0)} , seq(100))
sequence <- c(sequence)


#10 Generate a sequence backwards of the integers from 1 to 100.

#Write the R code
reverse_sequence <- seq(100, 1, by = -1)
reverse_sequence

# Output
reverse_sequence  #[1] 100  99  98  97  96  95  94  93  92  91  90  89  88  87  86  85  84  83  82  81  80  79  78
#[24]  77  76  75  74  73  72  71  70  69  68  67  66  65  64  63  62  61  60  59  58  57  56  55
#[47]  54  53  52  51  50  49  48  47  46  45  44  43  42  41  40  39  38  37  36  35  34  33  32
#[70]  31  30  29  28  27  26  25  24  23  22  21  20  19  18  17  16  15  14  13  12  11  10   9
#[93]   8   7   6   5   4   3   2   1



#11    List all the natural numbers below 25 that are multiples of 3 or 5. Find the sum of these multiples.
natural_numbers <- 1:24 * 3
natural_numbers

#a. How many data points from 10 to 11?
length (10:11)


#b. Write the R code and its output from 10 and 11.

natural_numbers <- 10:11 * 3
natural_numbers 

#Output 
natural_numbers   #30 33





#12 Statements can be grouped together using braces ‘{’ and ‘}’.....
{ x <- 0+ x + 5 + }

#Describe the output.                    
# 1. This statement is error with the incomplete assignment statement, lack of a value to assign to x and the unexpected + sign after 5.


#13 *Set up a vector named score, consisting of 72, 86, 92, 63, 88, 89, 91, 92, 75 and 77. To access individual elements of an atomic vector, one generally uses the x[i] construction.

#Find x[2] and x[3]. 

score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
score 

#using x[i] construction
element_2 <- score[2]
element_2
element_3 <- score[3]
element_3

#Write the R code 
element_2 <- score[2]
element_3 <- score[3]

# Output
element_2 #output 86
element_3 #output 92



#14. *Create a vector a = c(1,2,NA,4,NA,6,7)

a = c(1,2,NA,4,NA,6,7)
a 

#a. Change the NA to 999 using the codes print(a,na.print="-999")

print(a, na.print = "-999")

#b. Write the R code and its output. Describe the output. 

#Write the R code
a = c(1,2,NA,4,NA,6,7)
a  



#output
print(a, na.print = "-999") #  1    2 -999    4 -999    6    7

#Describe the output. The output is now different, I input a print function using na.print to assign a new value of -999 to the store value of NA. 




# 15. A special type of function calls can appear on the left hand side of the assignment
#operator as in > class(x) <- "foo".
#Follow the codes below:
# name = readline(prompt="Input your name: ")
# age = readline(prompt="Input your age: ")
#print(paste("My name is",name, "and I am",age ,"years old."))
##print(R.version.string)


name = readline(prompt="Input your name: ")
age = readline(prompt="Input your age: ")
print(paste("My name is",name, "and I am",age ,"years old."))
print(R.version.string)

# What is the output of the above code? 

# The output of the code printed in the first line shows the name and age a user entered with the format of My name is",name, "and I am",age ,"years old.
# The second line shows the R version string installed in your computer.






