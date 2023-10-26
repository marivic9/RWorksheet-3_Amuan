---
title: "Worksheet#4A"
author: "Marivic Amuan"
date: "2023-10-25"
output: pdf_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
#
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

```