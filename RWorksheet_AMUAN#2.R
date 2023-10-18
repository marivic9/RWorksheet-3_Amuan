#1. Create a vector using : operator

#A. Sequence from -5 to 5.

seq(-5, 5)

#OUTPUT = [1] -5 -4 -3 -2 -1  0  1  2  3  4  5

#The ouput shows the data sequence from -5 to 5

#B.x <- 1:7. What will be the value of x?

x <- c(1:7)
x

#OUTPUT = The value of x is [1] 1 2 3 4 5 6 7

#2.Create a vector using seq() function

#A. seq(1, 3, by=0.2) #

aVector <- seq (1,3, by=0.2)
aVector

#OUTPUT =  [1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0 So, the output is a sequence of numbers from 1.0 to 3.0 with increments of 0.2 between each consecutive number.

#3. A factory has a census of its workers.

workersagelist <- list ("34", "28", "22", "36", "27", "18", "52", "39", "42", "29", "35", "31", "27", "22", "37", "34", "19", "20", "57", "49", "50", "37", "46", "25", "17", "37", "43", "53", "41", "51", "35", "24" , "33" , "41", "53", "40", "18", "44", "38", "41", "48", "27", "39", "19", "30", "61", "54", "58", "26", "18")
workersagelist

#A. Access 3rd element, what is the value?

list3rdelement <- workersagelist [3]
list3rdelement

#VALUES = [1] "22
#B. Access 2nd and 4th element, what are the values?

list2nd_4thelement <- workersagelist [c(2,4)]
list2nd_4thelement

#VALUES = [[1]] [1] "28" [[2]] [1] "36"

#C. Access all but the 4th and 12th element is not included. Write the R script and its output.

listexcept4th_12thelement <- workersagelist [c(-4, -12)]
listexcept4th_12thelement

#4. Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x).

xVector<- c("first"=3, "second"=0, "third"=9)
xVector

#A. Print the results. Then access x[c("first", "third")].

aVector <- aVector[c("first", "third")]
aVector
#OUTPUT = first third  3     9 

#5. Create a sequence x from -3:2.

seq_x <- seq(-3:2)
seq_x

#A. Modify 2nd element and change it to 0;
seq_x[2] <- 0
seq_x
#So, the second element, which was 7, has been modified to 0, and 'x' now looks like this. [1] 1 0 3 4 5 6 (OUTPUT)


#6.A Create a dat frame for month, price per liter(php) and purchase-quantity (liter).

#per_liter(php) and purchase_quantity (liter).
diesel_fuel <- data.frame(
  Month = c("Jan","Feb","March","April","May","June"),
  Price_per_liter = c(52.50,57.25,60.00,65.00,74.25,54.00),
  Purchase_quantity = c(25,30,40,50,10,45)
)
diesel_fuel

#6.B

average_fuel_exp<- weighted.mean(diesel_fuel$Price_per_liter,diesel_fuel$Purchase_quantity)
average_fuel_exp

#OUTPUT = [1] 59.2625

#7.A 
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
data  

#7.B RESULTS: [1]    141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708    135.0000   3710.0000

#8. The table below gives the 25 most powerful celebrities and their annual pay as ranked by the editions of Forbes magazine and as listed on the Forbes.com website.

#8.A Create vectors according to the above table. Write the R scripts and its output.

forbes_rank <- data.frame(
  power_ranking = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25),
  celebs = c("Tom Cruise","Roling Stones","Oprah Winfey","U2","Tiger Woods","Steven Spielberg","Howard Stern","50 Cent","Cast of the Supranos","Dan Brown","Bruce Springteen","Donald Trump","Muhhamad Ali","Paul McCartney","George Lucas","Elton John","David Letterman","Phil Mickelson","J.K Rowling","Bradd Pitt","Peter Jackson","Dr. Phil McGraw","Jay Lenon","Celine Dion","Kobe Bryant"),
  pay = c(67,90,225,110,90,332,302,41,52,88,55,44,55,40,233,34,40,47,75,25,39,45,32,40,31)
)
forbes_rank
View(forbes_rank)

#OUTPUT =    power_ranking               celebs pay
#1              1           Tom Cruise  67
#2              2        Roling Stones  90
#3              3         Oprah Winfey 225
#4              4                   U2 110
#5              5          Tiger Woods  90
#6              6     Steven Spielberg 332
#7              7         Howard Stern 302
#8              8              50 Cent  41
#9              9 Cast of the Supranos  52
#10            10            Dan Brown  88
#11            11     Bruce Springteen  55
#12            12         Donald Trump  44
#13            13         Muhhamad Ali  55
#14            14       Paul McCartney  40
#15            15         George Lucas 233
#16            16           Elton John  34
#17            17      David Letterman  40
#18            18       Phil Mickelson  47
#19            19          J.K Rowling  75
#20            20           Bradd Pitt  25
#21            21        Peter Jackson  39
#22            22      Dr. Phil McGraw  45
#23            23            Jay Lenon  32
#24            24          Celine Dion  40
#25            25          Kobe Bryant  31

#8.B Modify the power ranking and pay of J.K. Rowling. Change power ranking to 15 and pay to 90. Write the R scripts and its output.

new_power_ranking$power_ranking[new_power_ranking$celebs == "J.K Rowling"] <- 15
new_power_ranking$pay[new_power_ranking$celebs == "J.K Rowling"] <- 90

new_power_ranking

#8.C Create an excel file from the table above and save it as csv file(PowerRanking). Import the csv file into the RStudio. 

#What is the R script?

library(readxl)
PowerRanking_csv <- read_excel("PowerRanking.csv.xlsx")
View(PowerRanking_csv) 

#8. D Access the rows 10 to 20 and save it as Ranks.RData.

#Write the R script and its output.

row <- new_power_ranking[10:20, ]
save(new_power_ranking, file = "Ranks.RData")

#The ouput display the data from row 10 to 20.

#9. Download the Hotels-Vienna https://tinyurl.com/Hotels-Vienna

#9 A. Import the excel file into your RStudio.

#What is the R script?

library(readxl)
hotels_vienna <- read_excel("hotels-vienna.xlsx")
View(hotels_vienna) 

#9 B. How many dimensions does the dataset have?

#What is the R script? 
dim(hotels_vienna)

#What is its output?
#[1] 428  24

#9 C. Select columns country, neighbourhood,price, stars, accomodation_type, andratings.
#Write the R script. 
hotels_vienna <- hotels_vienna [ c("country", "neighbourhood", "price", "stars", "accomodation_type", "ratings")]

#9 D. Save the data as **new.RData to your RStudio.

#Write the R script. 
hotels_vienna<- hotels_vienna
save(hotels_vienna, file = "**new.RData")

#9 E. Display the first six rows and last six rows of the new.RData. 

#What is the R script?
load("**new.RData")

head(data_vienna) #first row
tail(data_vienna) #last row

#10  Create a list of ten (10) vegetables you ate during your lifetime. If none, just list down.

#10 A. Write the R scripts and its output. 

vegetables <- c("Carrot", "Onion", "Squash", "Potato", "Bell peppers", "Mushroom", "Spinach", "Broccoli", "Peas", "Cabbage")

vegetables 
#Ouput [1]"Carrot"       "Onion"        "Squash"       "Potato"       "Bell peppers" "Mushroom"    
#[7] "Spinach"      "Broccoli"     "Peas"         "Cabbage"   

#10 B. Add 2 additional vegetables after the last vegetables in the list. 

#What is the R script and its output. 

secVegetables <- c(vegetables, "Radish" ,"Tomato")

secVegetables 
#Ouput [1] "Carrot"       "Onion"        "Squash"       "Potato"       "Bell peppers"
#[6] "Mushroom"     "Spinach"      "Broccoli"     "Peas"         "Cabbage"     
#[11] "Radish"       "Tomato" 

#10 C. Add 4 additional vegetables after index 5. How many datapoints does your vegetable list have? 

#What is the R script and its output. 

ThirdVegetables <- c(secVegetables , "Cucumber" ,"Corn", "Asparagus" , "Zucchini")

ThirdVegetables 
#Ouput [1] "Carrot"       "Onion"        "Squash"       "Potato"       "Bell peppers" "Mushroom"    
#[7] "Spinach"      "Broccoli"     "Peas"         "Cabbage"      "Radish"       "Tomato"      
#[13] "Cucumber"     "Corn"         "Asparagus"    "Zucchini"  

#10 D.  Remove the vegetables in index 5, 10, and 15. How many vegetables were left? 

#Write the codes and its output.  
FourVegetables <- ThirdVegetables[-c(5, 10, 15)] 

FourVegetables
#Ouput  [1] "Carrot"   "Onion"    "Squash"   "Potato"   "Mushroom" "Spinach" 
#[7] "Broccoli" "Peas"     "Radish"   "Tomato"   "Cucumber" "Corn"    
#[13] "Zucchini"

