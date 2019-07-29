#Creating a matrix
x <- 11:16
y <- 61:66
z <- 1:6

# Creating a matrix where x, y and z are columns
cbind(x, y, z)


# Creating a matrix where x, y and z are rows
rbind(x, y, z)

#creating a matrix using continuous numbers
matrix(data = 10:19,
       nrow = 5,  # number of row is 5 
       ncol = 2)  # number of columns is 2
# creating a matrix using number that are arragned in sequence by row
matrix(data=1:50, nrow = 5, ncol = 10, byrow = TRUE)

#creating a dataframe
Assets<- data.frame("serialnumber"=c(10,20,30,40,50),
                    "type"=c("server","chassis", "switch", "physicalhost","router"),
                    "location"=c("CA","PA","VA","DE","MI"))
Assets
str(Assets)
#to read charecters as charecter type 
Assets<- data.frame("serialnumber"=c(10,20,30,40,50),
                    "type"=c("server","chassis", "switch", "physicalhost","router"),
                    "location"=c("CA","PA","VA","DE","MI"), stringsAsFactors = FALSE)
str(Assets)

summary(Assets)

#to add a new column to assets dataframe
Assets$Model=c("HP", "Dell","Cisco", "HP","Cisco")
View(Assets)
names(Assets)
# changing the column name
names(Assets)[1] <- "Serial_No"

names(Assets)

# to view the dataset
View(ChickWeight)
# to view summary of data
summary(ChickWeight)
str(ChickWeight)
#to view top 6 rows
head(ChickWeight)
#to view last 6 rows
tail(ChickWeight)
# to find the column names
names(ChickWeight)
# to get single column data in a dataset
ChickWeight$Chick
# to find the mean of the column in a dataset
mean(ChickWeight$weight)
#to see top 6 rows in selected columns of a data set
head(ChickWeight[c("weight", "Diet")])
#to slice the data frame
View(ToothGrowth)
# to see first row data 
ToothGrowth[1, ]

#to view all the data in column 3
ToothGrowth[,3]

#to view first 5 rows to given column here its 2 nd column
ToothGrowth[1:5, 2] 

#to view first 5 rows to of all columns
ToothGrowth[1:5, ]

#subset of given data frame
subset(x = ToothGrowth,
       subset = len < 20 &
         supp == "OJ" &
         dose >= 1)

health <- data.frame("age" = c(32, 24, 43, 19, 43),
                     "height" = c(1.75, 1.65, 1.50, 1.92, 1.80),
                     "weight" = c(70, 65, 62, 79, 85))
bmi=health$weight / health$height ^ 2
bmi
#to reduce the long coding we can use with
with(health, height / weight ^ 2)




