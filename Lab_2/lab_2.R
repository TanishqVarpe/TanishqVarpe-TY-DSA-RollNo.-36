install.packages("dplyr")
library(dplyr)

#1. Import inbuilt dataset: iris
data("iris")
head(iris)
str(iris)
summary(iris)

#2. Import another dataset: mtcars
data("mtcars")
head(mtcars)
str(mtcars)

#3. Titanic dataset
data("Titanic")
Titanic

#4. Check for missing values
sum(is.na(iris))
colSums(is.na(mtcars))

#5. Summarize distribution by group 
iris%>%
  group_by(Species) %>%
  summarise(
    Avg_Sepal_length = mean(Sepal.Length),
    Avg_Petal_length = mean(Petal.Length)
  )

#Exercise Questions
#Q1: Import the airquality dataset and check its structure using str().
data("airquality")
head(airquality, 15)
str(airquality)

#Q2. Find the number of missing values in airquality.
sum(is.na(airquality))
colSums(is.na(airquality))

#Q3. Use summary() on the mtcars dataset and interpret the output.
data("mtcars")
head(mtcars)
summary(mtcars)

#Q4: Find the mean horsepower(hp) in the mtcars dataset.
mean(mtcars$hp)

#Q5: Group the iris dataset by species and calculate the average Sepal.Width. 
data("iris")
iris %>%
  group_by(Species) %>%
  summarise(avg_sepal_width = mean(Sepal.Width))

