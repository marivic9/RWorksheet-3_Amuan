#1. The table below shows the data about shoe size and height. Create a data frame.

#1A. Describe the data = AS I input each correspoding data inside the data frame, the data.frame allows me to create a table file to show the inputted datas.

householdData <- data.frame(
  ShoeSize = c(6.5,9.0, 8.5, 8.5, 10.5, 7.0, 9.5, 9.0, 13.0, 7.5, 10.5, 8.5, 12.0, 10.5, 13.0, 11.5, 8.5, 5.0, 10.0, 6.5, 7.5, 8.5, 10.5, 8.5, 10.5, 11.0, 9.0, 13.0),
  Height = c(66.0, 68.0, 64.5, 65.0, 70.0, 64.0, 70.0, 71.0, 72.0, 64.0, 74.5, 67.0, 71.0, 71.0, 77.0, 72.0, 59.0, 62.0, 72.0, 66.0, 64.0, 67.0, 73.0, 69.0, 72.0, 70.0, 69.0, 70.0),
  Gender = c("F", "F", "F", "F", "M", "F", "F", "F", "M", "F", "M", "F", "M", "M", "M", "M", "F", "F", "M", "F", "F", "M", "M", "F", "M", "M", "M", "M")
)

householdData

#1B. Create a subset by males and females with their corresponding shoe size and height. What its result? Show the R scripts.


subsetMale <- householdData[householdData$Gender == "M", c("ShoeSize", "Height", "Gender")]
subsetMale

subsetFemale <- householdData[householdData$Gender == "F", c("ShoeSize", "Height", "Gender")]
subsetFemale


#1C. Find the mean of shoe size and height of the respondents. Write the R scripts and its result.

meanShoeSize <- mean(householdData$ShoeSize)
meanShoeSize

#RESULT: [1] 9.410714

meanHeight <- mean(householdData$Height)
meanHeight

#RESULT: [1] 68.57143

#1D. Is there a relationship between shoe size and height? Why? 
#ANSWER: There could be a relationship between shoe size and height because 

correlation <- cor(householdData$ShoeSize, householdData$Height)
correlation

#RESULT: [1] 0.7766089


#2. Construct character vector months to a factor with factor() and assign the result to factor_months_vector. Print out factor_months_vector and assert that R prints out the factor levels below the actual values.

months <- c("March","April","January","November","January",
            "September","October","September","November","August",
            "January","November","November","February","May","August", "July","December","August","August","September","November","February", "April")
months

months <- factor(months)
months

#3. Then check the summary() of the months_vector and factor_months_vector. | Interpret the results of both vectors. Are they both equally useful in this case?

months <- summary(months)
months

#4. Create a vector and factor for the table below.

direction <- c( "East", "West", "North")
direction

freq <- c(1, 4, 3)
freq

newOrderData <- factor(direction,levels = c ("East", "West", "North", c(1, 4, 3)))
print(newOrderData)

#5. Enter the data below in Excel with file name = import_march.csv

#5A. 

read.table()


#5B. View the dataset. Write the R scripts and its result.

library(readr)
import_march <- read_csv("/cloud/project/Worksheet#4A/import_march.csv", 
                         na = "empty")
View(import_march)


