#Basic Data types in R and Data Import Techniques

#1.Numeric
x=1.5 #taking the value of x as 1.5
x   #print the value of x
class(x) #find the class of x

x1=8
x1
class(x1)
is.integer(x1) # check if the data type of x1 is integer

#2.Integer
y= as.integer(10) #considering value of y as integer
y
class(y)

is.integer(y) # check if y is an integer

#3. Charecter
c="Kate" # considering the c value to be a charecter or string value
c 
class(c) 


#4.complex
d=2i+3 # considering the value of d to be a complex number
d
class(d) 

#5. logical
x1=8 #considering x1 to be 8 and y to be 10 
y=10
z=x1>y #check if the given value of x1 is grater than y
z
class(z)  # to check the class of z

#6. Vector
a<- c(2,4,6,8) # numeric vector
a
b<- c("Joe","Monica","Ross") # charecter vector
b
c<-c(TRUE,FALSE,FALSE,TRUE) # vector can also have logical values
c

length(a) # to see how many values are there in a vector
length(b)

#combining 2 or more vectors
q=c(a,b,c) #combining all the three vectors above
q 

#Change my_character to be "universe" my_character <- "SOME TEXT"
my_character <- "universe"
my_character # to print
# Change my_logical to be FALSE my_logical <- TRUE
my_logical <- FALSE

# Declare variables of different types
glory <- 3
Shan <- "universe"
example <- FALSE 

# Check class of my_numeric
class(glory)

# Check class of my_character
class (Shan)

# Check class of my_logical
class (example)

# creating vetors  
numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")

# Complete the code for boolean_vector
boolean_vector <-c(TRUE, FALSE)

boolean_vector (or) print(boolean_vector)
# assigning names to vectors 1
some_vector <- c("John Doe", "poker player")
names(some_vector) <- c("Name", "Profession")

some_vector
# assigning names to vectors 2
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Assign days as names of poker_vector
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign days as names of roulette_vector
names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

poker_vector
roulette_vector
# caluculation of vectors  
A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of A_vector and B_vector
total_vector <- A_vector+B_vector

# Print out total_vector
total_vector

#Basics in R 

ls() # to see the list of objects in current working folder
getwd() # to get the current working directory
setwd(C/Users/gmutya048/Videos) # to change the working directory
getwd()
# to get the names of allcsv files in the current folder
all_data_frames <- lapply(list.files(pattern = ".csv"), read.csv) 
list.files(pattern = ".csv") #TO LIST ALL THE csv Files 
list.files(pattern = ".csv", recursive = TRUE)

# R data files
# creating a data frame with id,sex and score columns
study1.df <- data.frame(id = 1:5, 
                        sex = c("m", "m", "f", "f", "m"), 
                        score = c(51, 20, 67, 52, 42))
#creating a new df with aggregate function to the above created df
score.by.sex <- aggregate(score ~ sex, 
                          FUN = mean, 
                          data = study1.df)

study1.htest <- t.test(score ~ sex, 
                       data = study1.df)

save(study1.df, score.by.sex, study1.htest,
     file = "C:/Users/gmutya048/Videos/study1.RData") # Creating a r data File by combining the above three

#To save the current work space as an image file in r 
save.image(file = "/C:/Users/gmutya048/Videos/projectimage.RData")
# easy to save the current workspace for nexttime use. 
#Insted of creting multiple objects can save everything in a single way.
 
# to load the stored data in R
load(file = "C:/Users/gmutya048/Videos/study1.RData")
# to load the saved workinf space image
load(file = "/C:/Users/gmutya048/Videos/projectimage.RData")

# removing objects from the current working folder
rm(study1.df) # to remove the data frage called study1.df
rm(list = ls()) # to remove every thing from the current working folder

# reading various types of files into r 

#1 reading a text file

mydata <- read.table(file = 'C:/Users/gmutya048/Videos/Airlines.txt',    # proving the file location
                     sep = '\t',                # telling r to read the seperator in the file as tab. here it is tab delemeted.
                     header = TRUE,             # to read the header of the text file into r
                     stringsAsFactors = FALSE) 
View(mydata)

#2 reading a text file from an online source

fromweb <- read.table(file = 'http://nathanieldphillips.com/wp-content/uploads/2015/12/club.txt.',
                      sep = '\t',
                      header = TRUE)
View(fromweb)


#3 Improting coma seperated file into r
mydata<-read.csv("C:/Users/gmutya048/Videos/flights and percentages.csv") # read the csv file with the given name in the respective folder
View(mydata)

#4 importing exel data files into R

library(readxl)
Airlines_list <- read_excel("C:/Users/gmutya048/Videos/Airlines list.xlsx")
View(Airlines_list)






