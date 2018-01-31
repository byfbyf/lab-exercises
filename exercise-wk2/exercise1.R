## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
#vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# The console showsError in sum(my.vector) : invalid 'type' (character) of 
#argument this is because my.vector is a vector of character
# we can not sum the character.

install.packages("stringr")
library("stringr") 
my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# Does not load the package.

said.the.famous <- paste(my.line, " - ", initials)

# Describe why this doesn't work: 
# object 'initial' not found


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
vector <- c(1,2,3)
print(typeof(vector))
#double
# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
   N <- abs(length(v1) - length(v2))
   return(paste("The difference in lengths is", N))
}



# Pass two vectors of different length to your `CompareLength` function
print(CompareLength(vector, my.vector))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
   L1 = length(v1)
   L2 = length(v2)
   diff = L1 - L2
   if (diff > 0) {
      result = paste("Your first vector is longer by" , diff)
      return (paste(result, "elements"))
   }
   else{
      result = paste("Your second vector is longer by" , abs(diff))
      return (paste(result, "elements"))
   }
}
# Pass two vectors to your `DescribeDifference` function
print(DescribeDifference(vector, my.vector))


# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(a, b, c) {
   vec <- c(a, b, c)
   return(vec)
}
# Send 3 vectors to your function to test it.
a <- c(1,2,3)
b <- c(4,5,6)
d <-c(7,8,9)
print(CombineVectors(a, b, d))
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(vec) {
   
}

