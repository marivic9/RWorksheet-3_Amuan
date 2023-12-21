#Marivic Amuan
#BSIT 2-C

#1. Create a data frame for the table below. Show your solution.

student <- c(1,2,3,4,5,6,7,8,9,10)
pre_test <- c(55,54,47,57,51,61,57,54,63,58)
post_test <-c(61,60,56,63,56,63,59,56,62,61)

Student <- data.frame(
  Student = student, 
  Pre_Test = pre_test, 
  Post_Test = post_test
)

Student


#a. Compute the descriptive statistics using different packages (Hmisc and pastecs).
#Write the codes and its result.


library(Hmsc)
summary(Student)
##   Student         Pre_Test       Post_Test    
#Min.   : 1.00   Min.   :47.00   Min.   :56.00  
#1st Qu.: 3.25   1st Qu.:54.00   1st Qu.:56.75  
#Median : 5.50   Median :56.00   Median :60.50  
#Mean   : 5.50   Mean   :55.70   Mean   :59.70  
#3rd Qu.: 7.75   3rd Qu.:57.75   3rd Qu.:61.75  
#Max.   :10.00   Max.   :63.00   Max.   :63.00 


library(pastecs)

stat.desc(Student)

#Student     Pre_Test    Post_Test
#nbr.val      10.0000000  10.00000000  10.00000000
#nbr.null      0.0000000   0.00000000   0.00000000
#nbr.na        0.0000000   0.00000000   0.00000000
#min           1.0000000  47.00000000  56.00000000
#max          10.0000000  63.00000000  63.00000000
#range         9.0000000  16.00000000   7.00000000
#sum          55.0000000 557.00000000 597.00000000
#median        5.5000000  56.00000000  60.50000000
#mean          5.5000000  55.70000000  59.70000000
#SE.mean       0.9574271   1.46855938   0.89504811
#CI.mean.0.95  2.1658506   3.32211213   2.02473948
#var           9.1666667  21.56666667   8.01111111
#std.dev       3.0276504   4.64399254   2.83039063
#coef.var      0.5504819   0.08337509   0.04741023

#2. The Department of Agriculture was studying the effects of several levels of a fertilizer
#on the growth of a plant. For some analyses, it might be useful to convert the fertilizer
#levels to an ordered factor.


fertilizer <- c(10, 10, 10, 20, 20, 50, 10, 20, 10, 50, 20, 50, 20, 10)
ordered <- ordered(fertilizer)
ordered



#The specified order will be reflected in the levels of the ordered_factor as 10, 20, 50.



#3. Abdul Hassan, president of Floor Coverings Unlimited, has asked you to study the ex-
  #ercise levels undertaken by 10 subjects were “l”, “n”, “n”, “i”, “l” , “l”, “n”,

#“n”, “i”, “l” ; n=none, l=light, i=intense
  
#a. What is the best way to represent this in R?
  

subjects <- c("l", "n", "n", "i", "l", "l", "n", "n", "i", "l")

factor <- factor(subjects, levels=c("n", "l", "i"))
factor



#4. Sample of 30 tax accountants from all the states and territories of Australia and their
#individual state of origin is specified by a character vector of state mnemonics


state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
           "vic", "vic", "act")


#a. Apply the factor function and factor level. Describe the results.


state_factor <- factor(state)

summary(state_factor)

#In the given sample, we can determine the frequency of each state.






state_levels <- c("nsw", "vic", "qld", "wa", "sa", "tas", "nt", "act")
state <- factor(state, levels = state_levels)

summary(state)

#Offer a straightforward tally of occurrences for each level in the specified order.


#5. From #4 - continuation:

incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)
state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
           "vic", "vic", "act")
incmeans <- tapply(incomes, state, mean)
incmeans


#b. Copy the results and interpret.

#RESULT
# act      nsw       nt      qld       sa      tas      vic       wa 
#44.50000 57.33333 55.50000 53.60000 55.00000 60.50000 56.00000 52.25000

#In the ACT, the median income is $44,500, while in  NSW accountants have a median income of $57,333.33. In the NT, the median income is $55,500, and in QLD, accountants have a median income of $53,600. SA reports a median income of $55,000, while in TAS, accountants have a median income of $60,500. In VIC, the median income is $56,000, and accountants in WA earn a median income of $52,250.
#These figures offer insights into the central income tendencies for accountants in each region.


#6. Calculate the standard errors of the state income means (refer again to number 3)

stdError <- function(x) sqrt(var(x)/length(x))

incster <- tapply(incomes, state, stdError)

print(incster)

#a. What is the standard error? Write the codes.


mean_incomes <- tapply(incomes, state, mean)

 std_incomes <- tapply(incomes, state, sd)
 n_incomes <- tapply(incomes, state, length)

stdError <- function(x) sqrt(var(x)/length(x))
incster <- tapply(incomes, state, stdError)

print(incster)



#b. Interpret the result.

#ACT demonstrates stability at 1.5, with NSW showing resilience at 4.31. 
#Following closely, NT and QLD secure scores of 4.5 and 4.11, signaling robust economic activity.
#SA posts a score of 2.74, TAS registers 0.5, and VIC takes the lead at 5.24, highlighting economic strength.
#WA maintains a solid standing at 2.66. These scores offer a concise overview, assisting in targeted interventions and policy considerations.


#7. Use the titanic dataset.

data("Titanic")



#a. subset the titatic dataset of those who survived and not survived. Show the codes
#and its result.


data("Titanic")

no_adult <- as.vector(Titanic[, , "Adult", "No"])
no_child <- as.vector(Titanic[, , "Child", "No"])
yes_adult <- as.vector(Titanic[, , "Adult", "Yes"])
yes_child <- as.vector(Titanic[, , "Child", "Yes"])

cat("Number of Adults who did not survive:", sum(no_adult), "\n")
cat("Number of Children who did not survive:", sum(no_child), "\n")
cat("Number of Adults who survived:", sum(yes_adult), "\n")
cat("Number of Children who survived:", sum(yes_child), "\n")


#result
#Number of Adults who did not survive: 1438 

#Number of Children who did not survive: 52 

#Number of Adults who survived: 654 

#Number of Children who survived: 57


#8. The data sets are about the breast cancer Wisconsin. The samples arrive periodically
#as Dr. Wolberg reports his clinical cases. The database therefore reflects this

#a. describe what is the dataset all about.


#The data concentrates on women grappling with breast cancer,
#employing a survey scale spanning 1 to 10. This scale evaluates 
#diverse attributes of cell nuclei associated with breast cancer, 
#including clump thickness, size uniformity, shape uniformity, marginal adhesion, epithelial size, bare nucleoli, bland chromatin, normal nucleoli, and mitoses. 
#Each score on the scale signifies the severity or abnormality of the corresponding characteristic. The dataset strives to capture and analyze these features to glean insights into the nature of breast cancer among the surveyed women.



#d. Compute the descriptive statistics using different packages. Find the values of:
#  d.1 Standard error of the mean for clump thickness.

  library(readr)
  
  brstcn <- read_csv("/cloud/project/Worksheet#6/breastcancer_wisconsin.csv")
  View(brstcn)
  

clump_thickness_column <- brstcn$clump_thickness
stderror <- sd(clump_thickness_column) / sqrt(length(clump_thickness_column))

print(stderror)




#d.2 Coefficient of variability for Marginal Adhesion.


marginal_adhesion_column <- brstcn$marginal_adhesion
coefficientvar <- sd(marginal_adhesion_column) / mean(marginal_adhesion_column) * 100

print(coefficientvar)



#d.3 Number of null values of Bare Nuclei.


bare_nucleoli_column <- brstcn$bare_nucleoli
null <- sum(is.na(bare_nucleoli_column))


print(null)


#d.4 Mean and standard deviation for Bland Chromatin

mean <- mean(brstcn$bland_chromatin, )
sd <- sd(brstcn$bland_chromatin, )

print(paste("Mean:", mean))
print(paste("Standard deviation:", sd))


#d.5 Confidence interval of the mean for Uniformity of Cell Shape


shape_uniformity <- brstcn$shape_uniformity

anss <- t.test(shape_uniformity)

cat("Mean:", anss$estimate, "\n")
cat("95% confidence interval:", anss$conf.int[1], anss$conf.int[2], "\n")




#d. How many attributes?

attributes <- length(names(brstcn))
print(attributes)



#e. Find the percentage of respondents who are malignant. Interpret the results.

malignant <- sum(brstcn$class == "malignant")
total_count <- nrow(brstcn)

percentage <- (malignant / total_count) * 100
print(percentage)


#9. Export the data abalone to the Microsoft excel file. Copy the codes.


library(openxlsx)  
install.packages("AppliedPredictiveModeling")
library("AppliedPredictiveModeling")

data("abalone")

head(abalone)
summary(abalone)

write.xlsx(abalone, file = "abalone.xlsx") 
