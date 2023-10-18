#vectorAge
#1. Set up a vector named age

Age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41, 51, 35, 24, 33, 41)
Age

#datapointsk

length(Age)

#A. How many data points?  =34
#B. OUTPUT =  [1] 34 28 22 36 27 18 52 39 42 29 35 31 27 22 37 34 19 20 57 49 50 37 46 25 17 37 42 53 41 51 35 24 33 41


#2. Find the reciprocal of the values for age.

#reciprocal_Age
reciprocal_Age <-1/Age
reciprocal_Age

#OUTPUT =   [1] 0.02941176 0.03571429 0.04545455 0.02777778 0.03703704 0.05555556 0.01923077 0.02564103 0.02380952 0.03448276 0.02857143
#[12] 0.03225806 0.03703704 0.04545455 0.02702703 0.02941176 0.05263158 0.05000000 0.01754386 0.02040816 0.02000000 0.02702703
#[23] 0.02173913 0.04000000 0.05882353 0.02702703 0.02380952 0.01886792 0.02439024 0.01960784 0.02857143 0.04166667 0.03030303
#[34] 0.02439024


#3. Assign new age

#newAge

newAge <- c(Age, 0, Age)
newAge

#What happen to the new_age? =  Displayed the age then the new_age is in between 41 and 34, then it rerun the code again until 27. 

#4. Sort the values for age.

#sort_the_value

sortedAge <- sort(Age)
sortedAge

#OUTPUT =  [1] 17 18 19 20 22 22 24 25 27 27 28 29 31 33 34 34 35 35 36 37 37 37 39 41 41 42 42 46 49 50 51 52 53 57

#5. Find the minimum and maximum value for age.    

#minimun_maximum_value_of_age
minAge <- min(age)
minAge

maxAge <- max(age)
maxAge

#OUTPUT = min_age = [1] 17 max_age = [1] 57

#6. Set up a vector named data.

#data

data <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3, 2.5, 2.4, 2.7)
data

length(data)

#A. How many data points? = 11
#B. OUTPUT = [1] 2.4 2.8 2.1 2.5 2.4 2.2 2.5 2.3 2.5 2.4 2.7

#7. Generates a new vector    

#new_vector

doubleData <- c(data)
doubleData

#What happen to the data? = 

#8. Generate a sequence       

#sequence

int1to100 <- seq(1,100)
int1to100

length(age)

int20to60 <- seq(20,60)
int20to60

mean(Age)

int51to91 <- seq(51,91)
int51to91

sum(Age)

int1to1000 <- seq(1,1000)
int1to1000

#maxdata_points

maxdataPoints <- seq(1,10)
maxdataPoints

#A. How many data points from 8.1 to 8.4?   
#B. OUTPUT 8.1 = 1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22  23  24  25  26  27  28  29  30
#[31]  31  32  33  34  35  36  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51  52  53  54  55  56  57  58  59  60
#[61]  61  62  63  64  65  66  67  68  69  70  71  72  73  74  75  76  77  78  79  80  81  82  83  84  85  86  87  88  89  90
#[91]  91  92  93  94  95  96  97  98  99 100
#OUTPUT 8.2 = [1] 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 [41] 60
#OUTPUT 8.3 =  [1] 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59
#[41] 60
#OUTPUT 8.4 = 


#C. OUTPUT 8.5 =  [1]  1  2  3  4  5  6  7  8  9 10 



#9. Print a vector with the integers between 1 and 100 that are not divisible by 3, 5 and 7 using filter option.        

#filter_option

filtering <- seq(100) 
Filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))
filtering <- c(filtering)

#10. Generate a sequence backwards

#sequence_backwards

int100to1 <- seq(100,1)
int100to1 

#OUTPUT = [1] 100  99  98  97  96  95  94  93  92  91  90  89  88  87  86  85  84  83  82  81  80  79  78  77  76  75  74  73  72  71
#[31]  70  69  68  67  66  65  64  63  62  61  60  59  58  57  56  55  54  53  52  51  50  49  48  47  46  45  44  43  42  41
#[61]  40  39  38  37  36  35  34  33  32  31  30  29  28  27  26  25  24  23  22  21  20  19  18  17  16  15  14  13  12  11
#[91]  10   9   8   7   6   5   4   3   2   1

#11. List all the natural numbers below 25 that are multiples of 3 or 5

natural_numbers <- seq(24,1)
natural_numbers2 <- c(natural_numbers)
natural_numbers2 <- sum(natural_numbers2)
natural_numbers


#11. A. How many data points from 10 to 11?        

datapoints <- length (reverse_natural_numbers)+ length (naturalsum) * length (naturalnum2) datapoints
data

length(natural_numbers)

#12. 

{x <- 0+ x + 5 +} 

#OUTPUT = the code is unreadable because there is no value to store. 


#13 Set up a vector named score.

score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)

score 
score2 <- score [2]
score3 <- score[3]
score2
score3

#OUTPUT =  [1] 86 92

#14. Create a vector a = c(1,2,NA,4,NA,6,7)

a <-c(1,2,999,4,999,6,7)
a   

print(a,na.print = "999")

#OUTPUT = [1]   1   2 999   4 999   6   7


#15. class(x) <- "foo"

name = readline(prompt = "Input your name: ")
age = readline(prompt = "Input your age: ")

print(paste("My name is",name,"and I am",age,"years old."))
print(R.version.string)


