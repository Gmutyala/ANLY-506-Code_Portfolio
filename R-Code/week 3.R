#Importing the data into R
library(readr)
US_EPA_data <- read.csv("C:/Users/gmutya048/Downloads/EPA_data.csv")
View(US_EPA_data)

#to remove the spaces in column names
names(US_EPA_data) <- make.names(names(US_EPA_data))
names(US_EPA_data) # to view the column names

# to view number of rows in the data
nrow(US_EPA_data)

#to view number of columns in the dataset
ncol(US_EPA_data)

#TO summarize the data 
summary(US_EPA_data)
str(US_EPA_data)

#to view top few rows of data, 
head(US_EPA_data[, c(9:11, 17)])

#to view last few rows of data 
tail(US_EPA_data[, c(7:11, 17)])

# to view data from any particular column
table(US_EPA_data$Pollutant.Standard)

#to check how many unique States are listed in the daa
select(US_EPA_data, State.Name) %>% unique %>% nrow
#to list distinct state names
unique(US_EPA_data$State.Name)

#filter data based on presence of  Completeness.Indicator
library(dplyr)
EPA_Data<-filter(US_EPA_data, Completeness.Indicator == "Y"
                 & State.Name =='California') %>% 
          select(Parameter.Code, Parameter.Name, Pollutant.Standard, Method.Name, Datum,Observation.Count,Observation.Percent,State.Name, Arithmetic.Mean, City.Name, County.Name, CBSA.Name)

View(EPA_Data)

#To summarize any one column
summary(EPA_Data$Observation.Count)

summary(EPA_Data$Observation.Percent, seq(0, 1, 0.1))

#Question 1: Which California city is having more pollution levels

ranking <- group_by(EPA_Data, City.Name, County.Name) %>%
         summarize(EPA_Data = mean(Observation.Percent)) %>%
         as.data.frame %>%
          arrange(desc(EPA_Data))

ranking 
# Carlsbad has more level of pollutants in air.

head(ranking, 10) # to view top 10 california cities with more pollution levels

tail(ranking, 10) # last 10 california cities with less pollution levels

# no of cities from SFO Oakland area in California
filter(EPA_Data, CBSA.Name == "San Francisco-Oakland-Hayward, CA") %>% nrow
data<-filter(EPA_Data, CBSA.Name == "San Francisco-Oakland-Hayward, CA" & City.Name == "Livermore")
data


