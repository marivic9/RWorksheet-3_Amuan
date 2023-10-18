#1.   #a. Sequence from -5 to 5. Write the R code and its output.
sequence<- (-5:5)
sequence  #Output   -5 -4 -3 -2 -1  0  1  2  3  4  5

#Describe its output
#The ouput contains the sequence of -5 to 5.

#b. x <- 1:7. What will be the value of x?
x<-seq(1:7)

x  #What will be the value of x? ,The value of x contains the sequence number of 1 2 3 4 5 6 7.


#2.* Create a vector using seq() function
#a. seq(1, 3, by=0.2) # specify step size
#Write the R script and its output. Describe the output. 

vector_seq <- seq(1, 3, by = 0.2)

vector_seq  #Ouput 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0

#Describe the output 
#The output vector contains the numbers starting from 1 and increase by 0.2 until it reaches 3.0.  


#3 A factory has a census of its workers. There are 50 workers in total. The following
#list shows their ages: 34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
#22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
#24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
#18. 

#a. Access 3rd element, what is the value?
worker_age <- list ("34", "28", "22", "36", "27", "18", "52", "39", "42", "29", "35", "31", "27", "22", "37", "34", "19", "20", "57", "49", "50", "37", "46", "25", "17", "37", "43", "53", "41", "51", "35", "24", "33", "41", "53", "40", "18", "44", "38", "41", "48", "27", "39", "19", "30", "61", "54", "58", "26", "18")
Element_3 <- worker_age [3]

Element_3 #what is the value? The value is 22.



#b. Access 2nd and 4th element, what are the values?
worker_age <- list ("34", "28", "22", "36", "27", "18", "52", "39", "42", "29", "35", "31", "27", "22", "37", "34", "19", "20", "57", "49", "50", "37", "46", "25", "17", "37", "43", "53", "41", "51", "35", "24", "33", "41", "53", "40", "18", "44", "38", "41", "48", "27", "39", "19", "30", "61", "54", "58", "26", "18")
Element2_4 <- worker_age [c(2,4)]

Element2_4  #what are the values? The value are 28 and 36.

#c. Access all but the 4th and 12th element is not included.""
worker_age <- list ("34", "28", "22", "36", "27", "18", "52", "39", "42", "29", "35", "31", "27", "22", "37", "34", "19", "20", "57", "49", "50", "37", "46", "25", "17", "37", "43", "53", "41", "51", "35", "24", "33", "41", "53", "40", "18", "44", "38", "41", "48", "27", "39", "19", "30", "61", "54", "58", "26", "18")
Element_not_include <- worker_age [c(-4, -12)]

Element_not_include  #Ouptut for c
#[[1]]
#[1] "34"

#[[2]]
#[1] "28"

#[[3]]
#[1] "22"

#[[4]]
#[1] "27"

#[[5]]
#[1] "18"

#[[6]]
#[1] "52"

#[[7]]
#[1] "39"

#[[8]]
#[1] "42"

#[[9]]
#[1] "29"

#[[10]]
#[1] "35"

#[[11]]
#[1] "27"

#[[12]]
#[1] "22"

#[[13]]
#[1] "37"

#[[14]]
#[1] "34"

#[[15]]
#[1] "19"

#[[16]]
#[1] "20"

#[[17]]
#[1] "57"

#[[18]]
#[1] "49"

#[[19]]
#[1] "50"

#[[20]]
#[1] "37"

#[[21]]
#[1] "46"

#[[22]]
#[1] "25"

#[[23]]
#[1] "17"

#[[24]]
#[1] "37"

#[[25]]
#[1] "43"

#[[26]]
#[1] "53"

#[[27]]
#[1] "41"

#[[28]]
#[1] "51"

#[[29]]
#[1] "35"

#[[30]]
#[1] "24"

#[[31]]
#[1] "33"

#[[32]]
#[1] "41"

#[[33]]
#[1] "53"

#[[34]]
#[1] "40"

#[[35]]
#[1] "18"

#[[36]]
#[1] "44"

#[[37]]
#[1] "38"

#[[38]]
#[1] "41"

#[[39]]
#[1] "48"

#[[40]]
#[1] "27"

#[[41]]
#[1] "39"

#[[42]]
#[1] "19"

#[[43]]
#[1] "30"

#[[44]]
#[1] "61"

#[[45]]
#[1] "54"

#[[46]]
#[1] "58"

#[[47]]
#[1] "26"

#[[48]]
#[1] "18"


#4 *Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x).
x <- c("first"=3, "second"=0, "third"=9) 
x 

#a. Print the results. Then access x[c("first", "third")].
#Describe the output. The output contains the element first and third with its value 3 and 9.

#b. Write the code and its output.
first_third <- x[c("first", "third")]

first_third  #Ouput first third 
# 3     9


#5. Create a sequence x from -3:2.
sequence <- (-3:2)
sequence

#a. Modify 2nd element and change it to 0;x[2] <- 0
#x
sequence [2] <- 0 
sequence

#Describe the output 
#This output shows the changed of element to 2 to the value of 0 as i write a code requesting to change it to 0 and the remaining elements will stay the same.

#b. Write the code and its output.
sequence <- (-3:2) 
sequence  #Ouput [1] -3 -2 -1  0  1  2 

sequence [2] <- 0 
sequence  #Ouput [1] -3  0 -1  0  1  2



#6 The following data shows the diesel fuel purchased by Mr. Cruz.
#a. Create a data frame for month, price per liter (php) and purchase-quantity (liter). 
#Write the R scripts and its output.

data_fuel <- data.frame(
  Month = c("Jan", "Feb", "March", "Apr", "May", "June"),
  Price_per_liter_php = c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00),
  Purchase_quantity_liters = c(25, 30, 40, 50, 10, 45)
)

print(data_fuel) #Ouput  Month Price_per_liter_php Purchase_quantity_liters
#1   Jan               52.50                       25
#2   Feb               57.25                       30
#3 March               60.00                       40
#4   Apr               65.00                       50
#5   May               74.25                       10
#6  June               54.00                       45


#What is the average fuel expenditure of Mr. Cruz from Jan to June? Note: Use ‘weighted.mean(liter,purchase)‘. 
#Write the R scripts and its output.
# Calculate the weighted mean of fuel expenditure

fuel_average_expenditure <- weighted.mean(data_fuel$Price_per_liter_php, data_fuel$Purchase_quantity_liters)
cat("The average fuel expenditure of Mr. Cruz from Jan to June is:", fuel_average_expenditure, "Php\n")



#7 R has actually lots of built-in datasets. For example, the rivers data “gives the lengths (in miles) of 141 “major” rivers in North America, as compiled by the US Geological Survey”.
#a. Type “rivers” in your R console.
#Create a vector data with 7 elements, containing the number of elements (length) in rivers, their sum (sum), mean (mean), median(median), variance(var), standard deviation(sd), minimum (min) and maximum (max).
#data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),sd(rivers), min(rivers), max(rivers))
# Load the rivers dataset
data("rivers")

# Create a vector "data" with statistics
data <- c(length(rivers) , sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers),max(rivers))
# Print the vector "data"
print(data)


#b. What are the results? 
#This output shows the various statistics for the rivers data set.

#c. Write the R scripts and its outputs.
data <- c(length(rivers) , sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers),max(rivers))


print(data)   #Ouput [1]    141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708    135.0000
#[8]   3710.0000



#8 The table below gives the 25 most powerful celebrities and their annual pay as ranked by the editions of Forbes magazine and as listed on the Forbes.com website.
#a. Create vectors for Celebrity Names and Annual Pay
#Write the R scripts and its output.

celebrity_names <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2","Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Brice Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elthon John", "David Letterman", "Phil Mickelson", "J.K Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant")
annual_pay <- c(67,90,225,110,90,332,302,41,52,88,55,44,55,40,233,34,40,47,75,25,39,45,32,40,32)


print(celebrity_names) #Ouput  "Tom Cruise"           "Rolling Stones"       "Oprah Winfrey"        "U2"                  
#[5] "Tiger Woods"          "Steven Spielberg"     "Howard Stern"         "50 Cent"             
#[9] "Cast of the Sopranos" "Dan Brown"            "Brice Springsteen"    "Donald Trump"        
#[13] "Muhammad Ali"         "Paul McCartney"       "George Lucas"         "Elthon John"         
#[17] "David Letterman"      "Phil Mickelson"       "J.K Rowling"          "Bradd Pitt"          
#[21] "Peter Jackson"        "Dr. Phil McGraw"      "Jay Lenon"            "Celine Dion"         
#[25] "Kobe Bryant" 

print(annual_pay)    #Ouput [1]  67  90 225 110  90 332 302  41  52  88  55  44  55  40 233  34  40  47  75  25  39  45  32
#[24]  40  32




#b. Modify the power ranking and pay of J.K. Rowling. Change power ranking to 15 and pay to 90. 
#Write the R scripts and its output.

print(celebrities)

celebrities$Power_Ranking[celebrities$Name == "J.K Rowling"] <- 15
celebrities$Annual_Pay[celebrities$Name == "J.K Rowling"] <- 90

print("updated")
print(celebrities)


#c Create an excel file from the table above and save it as csv file(PowerRanking). Import the csv file into the RStudio. 

#What is the R script?


library(readxl)
PowerRanking_csv <- read_excel("PowerRanking.csv.xlsx")
View(PowerRanking_csv) 



#d.
data10_20 <- celebrities[10:20, ]
save(data10_20, file = "Ranks.RData")


#9 Download the Hotels-Vienna https://tinyurl.com/Hotels-Vienna
#a. Import the excel file into your RStudio.
#What is the R script? 


library(readxl)
hotels_vienna <- read_excel("hotels-vienna.xlsx")
View(hotels_vienna)



#b. How many dimensions does the dataset have?
#What is the R script? 
dim(hotels_vienna)

#WHat is its output? 
#[1] 428  24




#c. Select columns country, neighbourhood, price, stars, accomodation_type, and ratings.
#Write the R script.

data_vienna <- hotels_vienna[, c("country", "neighbourhood", "price", "stars", "accomodation_type", "ratings")]



#d. Save the data as **new.RData to your RStudio. 
#Write the R script. 

data_vienna<- hotels_vienna
save(data_vienna, file = "**new.RData")





#e. Display the first six rows and last six rows of the new.RData. What is the R script?


load("**new.RData")

# Display the first six rows
head(data_vienna)

# Display the last six rows
tail(data_vienna)

#10. Create a list of ten (10) vegetables you ate during your lifetime. If none, just list down.
#a. Write the R scripts 

vegetables <- c("Tomato", "Onion", "Potato", "Capsicum", "Corn", "Cabbage", "Carrot", "Mushroom", "Pumpkin", "Broccoli")

vegetables #Ouput  [1] "Tomato"   "Onion"    "Potato"   "Capsicum" "Corn"     "Cabbage"  "Carrot"   "Mushroom" "Pumpkin" 
#[10] "Broccoli"






#b. Add 2 additional vegetables after the last vegetables in the list. 
#What is the R script 

vegetables2 <- c(vegetables, "Ginger", "Radish")

vegetables2  #Ouput  [1] "Tomato"   "Onion"    "Potato"   "Capsicum" "Corn"     "Cabbage"  "Carrot"   "Mushroom" "Pumpkin" 
#[10] "Broccoli" "Ginger"   "Radish"





#c. Add 4 additional vegetables after index 5. How many datapoints does your vegetable list have? 
#What is the R script 

vegetables3 <- append(vegetables2, c("Cucumber", "Pepper", "Eggplant", "Beans"), after = 5)

vegetables3 #Ouput [1] "Tomato"   "Onion"    "Potato"   "Capsicum" "Corn"     "Cucumber" "Pepper"   "Eggplant" "Beans"   
# [10] "Cabbage"  "Carrot"   "Mushroom" "Pumpkin"  "Broccoli" "Ginger"   "Radish" 




#d. Remove the vegetables in index 5, 10, and 15. How many vegetables were left? 
#Write the codes and its output.     

# Remove vegetables at index 5, 10, and 15
vegetables4 <- vegetables3[-c(5, 10, 15)]

# Display the updated list of vegetables
vegetables4  #Ouput [1] "Tomato"   "Onion"    "Potato"   "Capsicum" "Cucumber" "Pepper"   "Eggplant" "Beans"    "Carrot"  
#[10] "Mushroom" "Pumpkin"  "Broccoli" "Radish"



