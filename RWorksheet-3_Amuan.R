#There is a built-in vector LETTERS contains the uppercase letters of the alphabet and letters which contains the lowercase letters of the alphabet.
#LETTERS

print(LETTERS)
print(letters)


#A. You need to produce a vector that contains the first 11 letters.

aVector <- LETTERS [1:11]
aVector

#OUTPUT =  [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K"

#B. Produce a vector that contains the odd numbered letters.

odd_numbers <- c(1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25)

aVector <- LETTERS [odd_numbers]
aVector

#OUTPUT = [1] "A" "C" "E" "G" "I" "K" "M" "O" "Q" "S" "U" "W" "Y"

#C. Produce a vector that contains the vowels

vowels <- c(1,5,9,15)

aVector <- LETTERS [vowels]
aVector

#OUTPUT = [1] "A" "E" "I" "O"

#D. Produce a vector that contains the last 5 lowercase letters.

aVector <- letters[21:26]
aVector

#OUTPUT = [1] "u" "v" "w" "x" "y" "z"

#E. Produce a vector that contains letters between 15 to 24 letters in lowercase.

aVector <- letters[15:24]
aVector

#OUTPUT = [1] "o" "p" "q" "r" "s" "t" "u" "v" "w" "x"

#Create a vector(not a dataframe) with the average temperatures in April for Tugue-garao City, Manila, Iloilo City, Tacloban, Samal Island, and Davao City. The average temperatures in Celcius are 42, 39, 34, 34, 30, and 27 degrees.

