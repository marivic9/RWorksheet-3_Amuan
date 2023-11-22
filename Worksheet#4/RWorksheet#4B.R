#1. Using the for loop, create an R script that will display a 5x5 matrix as shown in Figure 1. It must contain vectorA = [1,2,3,4,5] and a 5 x 5 zero matrix.
#FOR LOOP

vectorA <- c(1, 2, 3, 4, 5)

x <- matrix(0, nrow = 5, ncol = 5)

for (i in 1:5) {
  for (p in 1:5) {
    if (i == p) {
      x [i, p] <- vectorA[i]
    }
    
  }
}


abs(x) 


#2. Print the string "*" using for() function. The output should be the same as shown in Figure

for (i in 1:5) {
  stars <- rep ("*", i)
  
  print(stars)
}


#3. Get an input from the user to print the Fibonacci sequence starting from the 1st input up to 500. Use repeat and break statements. Write the R Scripts and its output.

start_num <- as.numeric(readline("Enter the starting number for the Fibonacci sequence: "))

if (is.na(start_num)) {
  cat("Enter a valid numeric starting number.\n")
} else {
  
  num1 <- 0
  num2 <- 1
  
  while (num2 <= 500) {
    if (!is.na(start_num) && num2 >= start_num) {
      cat(num2, " ")
    }
    
    fib_sum <- num1 + num2
    num1 <- num2
    num2 <- fib_sum
  }
}



#4. Import the dataset as shown in Figure 1 you have created previously.

#4A.

prevDATA <- read.csv("householdData.csv")
head(prevDATA)

#4B.

males <- prevDATA[prevDATA$Gender == "M",]
males

females <- prevDATA[prevDATA$Gender == "F",]
females

numOfMales <- nrow(males)
numOfMales

numOfFemales <- nrow(females)
numOfFemales


#4C.

totalMaleFemale <- table(prevDATA$Gender)
barplot(totalMaleFemale, main = "Number of Females and Males", xlab = "Gender", ylab = "Count", col = c("Pink", "Blue"))
legend("center", legend = rownames(totalMaleFemale), fill = c("Pink", "Blue"))



#5.The monthly income of Dela Cruz family was spent on the following:

spendingData <- data.frame(
  Category = c("Food", "Electricity", "Savings", "Miscellaneous"),
  Value = c(60, 10, 5, 25))

spendingData$Percentage <- spendingData$Value / sum (spendingData$Value) * 100
colors <- c("Blue", "Yellow", "White", "Green")

#5A. Create a piechart that will include labels in percentage.Add some colors and title of the chart. Write the R scripts and show its output.

spendingData$Percentage <- spendingData$Value / sum (spendingData$Value) * 100
colors <- c("Pink", "Violet", "White", "Yellow")

pie(spendingData$Value,
    labels = paste(spendingData$Category, " (", spendingData$Percentage, "%)"),
    col = colors, 
    main = "The Monthly Income Spending of Dela Cruz Family",cex = 0.8) 

legend("topright", spendingData$Category, fill = colors)


#6. Use the iris dataset.
#6.A. Check for the structure of the dataset using the str() function. Describe what you have seen in the output.

str(iris)

#OUTPUT:
#ANSWER: The dataset, structured as a data frame with 150 observations and 5 variables, includes numeric measurements (Sepal.Length, Sepal.Width, Petal.Length, Petal.Width) and a categorical variable (Species) with three levels ("setosa," "versicolor," and another level), providing a comprehensive overview of iris flower characteristics.

#'data.frame':	150 obs. of  5 variables:
#$ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
#$ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
#$ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
#$ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
#$ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...

#6B. Create an R object that will contain the mean of the sepal.length, sepal.width,petal.length,and petal.width. What is the R script and its result?

valueMeans <- c(
  Lsepal <- mean(iris$Sepal.Length),
  Wsepal <- mean(iris$Sepal.Width) ,
  Lpetal <- mean(iris$Petal.Length), 
  Wpetal <- mean(iris$Petal.Width) 
) 
valueMeans

#6C. Create a pie chart for the Species distribution. Add title, legends, and colors. Write the R script and its result.

species <- table(iris$Species)
colors <- c("Gold", "Pink", "White")

pie(species, col = colors, labels = species )
legend("topright", legend = levels(iris$Species), fill = colors)
title("Species Distribution")

#6D. Subset the species into setosa, versicolor, and virginica. Write the R scripts and show the last six (6) rows of each species.

setosaSubset <- iris[iris$Species == "Setosa", ]
setosaSubset

versicolorSubset <- iris[iris$Species == "VersiColor", ]
versicolorSubset

virginicaSubset <- iris[iris$Species == "Virginica", ]
virginicaSubset

tail(setosaSubset, 6)
tail(versicolorSubset, 6)
tail(virginicaSubset, 6)

#6E. Create a scatterplot of the sepal.length and sepal.width using the different species(setosa,versicolor,virginica). Add a title = “Iris Dataset”, subtitle = “Sepal width and length, labels for the x and y axis, the pch symbol and colors should be based on the species.

library(ggplot2)

iris$Species <- as.factor(iris$Species)
scatterplot <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species, shape = Species)) +
  geom_point(size = 5) +
  labs(
    title = "Iris Dataset",
    subtitle = "Sepal Width and Length",
    x = "Sepal Length",
    y = "Sepal Width"
  ) +
  scale_color_manual(values = c("setosa" = "Blue", "versicolor" = "Red", "virginica" = "Orange")) +
  scale_shape_manual(values = c("setosa" = 2, "versicolor" = 10, "virginica" = 9))

print(scatterplot)

#7. Import the alexa-file.xlsx. Check on the variations. Notice that there are extra whitespaces among black variants (Black Dot, Black Plus, Black Show, Black
#Spot). Also on the white variants (White Dot, White Plus, White Show, White Spot).

library(readxl)

alexa_file <- read_excel("alexa_file.xlsx")
alexa_file

#7A. Rename the white and black variants by using gsub() function.

alexa_file$variation <- gsub("White Dot", "WhiteDot", alexa_file$variation)
alexa_file$variation <- gsub("White Show", "WhiteShow", alexa_file$variation)
alexa_file$variation <- gsub("White Plus", "WhitePlus", alexa_file$variation)
alexa_file$variation <- gsub("White Spot", "WhiteSpot", alexa_file$variation)

alexa_file$variation <- gsub("Black Dot", "BlacDot", alexa_file$variation)
alexa_file$variation <- gsub("Black Show", "BlackShow", alexa_file$variation)
alexa_file$variation <- gsub("Black Plus", "BlackPlus", alexa_file$variation)
alexa_file$variation <- gsub("Black Spot", "BlackSpot", alexa_file$variation) 

alexa_file

#7B. Get the total number of each variations and save it into another object. Save the object as variations.RData. Write the R scripts. What is its result?

library(dplyr)

var <-alexa_file %>%
  count(alexa_file$variation)
var

var 
save(var, file = "variations.RData")

#7C. From the variations.RData, create a barplot(). Complete the details of the chart which include the title, color, labels of each bar.

load("variations.RData")

varNames <- c(
  "1. Black", "2. Black Dot", "3. Black Plus", "4. Black Show", 
  "5. Black Spot", "6. Charcoal Fabric", "7. Configuration: Fire TV Stick",
  "8.Heather Gray Fabric", "9.Oak Finish", "10. Sandstone Fabric",
  "11. Walnut Finish", "12. White", "13. White Dot", "14. White Plus", "15. White Show", "16.White Spot"
)
varNames

compPlot <- barplot(var$n,
            names.arg = 1:16, 
            col = 1:16, 
            main = "Product Variation", 
            xlab = "Number of Variaton",
            ylab = "Count", 
            las = 0.0, 
            cex.names = 0.05, 
            space = 0.02)
legend("topright", legend = varNames, fill = 1:16, title = "Variation Names", cex = 0.05)

#7D. Create a barplot() for the black and white variations. Plot it in 1 frame, side by side. Complete the details of the chart.

library(ggplot2)
library(magrittr)

blackPlot <- var [var$`alexa_file$variation` %in% c("Black", "BlackDot", "BlackShow", "BlackPlus", "BlackSpot"),]
whitePlot <- var [var$`alexa_file$variation` %in% c("White", "WhiteDot", "WhiteShow", "WhitePlus", "WhiteSpot"),]

par(mfrow = c(1,2), mar = c(2,2,2,2))

black <- barplot(height = blackPlot$n,
                 names.arg = blackPlot$`alexa_file$variation`,
                 col = "Black",
                 main = "Black Variations",
                 xlab = "Number of Variation",
                 ylab = "Count",
                 las = 0.0,
                 cex.names = 0.4,
                 space = 0.2)

white <- barplot(height = whitePlot$n,
                 names.arg = whitePlot$`alexa_file$variation`,
                 col = "White",
                 main = "White Variations",
                 xlab = "Number of Variation",
                 ylab = "Count",
                 las = 0.0,
                 cex.names = 0.4,
                 space = 0.2
)
