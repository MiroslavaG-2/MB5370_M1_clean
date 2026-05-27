#-------------------------------#
# MB5370 intro to programming 
# Miroslava Guerrero
# May 2026

#-------------------------------#
# Workspace:
# C:/Users/magda/OneDrive/Documents/MB5370/Module_01.R

#-------------------------------#
# WORKSHOP 1 #
# Getting started ###
# Introduction to R 

2+1
1:30 # : to make sequence of numbers

# 6* # on console there's a + which means that the command is unfinished

# 6%2 # shows syntax error - allows to fix errors


#-------------------------------#
# Variables and assignment ###
# understanding how data is stored in R

# 'assignment operator': using <- to assign a value to an object. in Python use =

age <- 25
first_name <- 'Bill'

age+1
age+age

# RULES to naming objects ###
# can't use number at the beginning, special symbols (incl. spaces)
# object names are case sensitive

### ERROR examples #
01_age <- 25 # starts with number
!_age <- 25 # no special symbols
age bob <- 25 # no spaces#
Age <- 41 #cases matter

'age bob' <- 25 #no spaces, but with back ticks works
# if need add detail to title, use underscores or hyphens when possible. age_in_years or age_yrs better than age
# stay consistent


#### EXERCISE
A <- 15+25.1+20.25 #60.35
B <- 98
A + B #158.35


#-------------------------------#
# Functions ###
# built-in functions allow many things, ranging from simple things like rounding, sampling or reporting things

# Rounding - built-in functions like 'round' and 'floor'
years_old <- 25.7
round(years_old) #rounds up
floor(years_old) #rounds down

# functions have arguments. these let you specify how many decimal places you want to round a number to
years_old_1 <- 25.765
round(years_old_1, 2) #comma after object to specify argument

# discover options for each function - use args(xxx) function or question mark
?round #goes to help
args(round) #args in the Console



# EXERCISE ###
?paste # use this function to construct a sentence 
years_old_2 <- 26
Miroslava_age <- paste("Miroslava is", years_old_2, "years old")
Miroslava_age


#-------------------------------#
# Debugging ###
# fixing errors in code
# misconceptions - variables in programs do not work the same way as they do in spreadsheets

grade <- 55
total <- grade +10
print(total)
grade <- 90
print(total) # value of total in a spreadsheet will be 100, but in programming a variable holds the value it was assigned (65)
total <- grade+10
print(total) # excecuted in the way it was defined

# debugging - being able to read your code. most effective way of finding errors
# learn read code by predicting behaviour before running it

# what will this code do?
p <- 2
z <- 5
out <- p*z # value should be 10
print(out) #same as expected



# Error reports #
# often give hint needed to understand what's going on. looking up error in google, StackOverflow

#debugging errors
out <- p*a # undefined variable
out <-p*z

# developing or using testing functions
# good idea to write short functions that test your results to make sure they are what they are supposed to be
# ensure that your variable is the right type

# testing 
x <- 1
is.character(x) #states that it is not a character
is.numeric(x) #states that it is numeric


# EXERCISE ##
# what is wring with code. use comments to identify problems and nature of the problem

my_quiz <- c("uno",
             "dos",
             "tres",
             "cuatro", #comma is missing
             "cinco") #function names characters
print (my_quiz) #misspelled 'quiz'. prints out result
str(my_quiz) # shows its a character variable and sequence
length(my_quiz) #function len does not exist. should be length.



#-------------------------------#
# Data types
# understanding data types is vital, will help in range of areas
# six basic data types: character, numeric, integer, logical, complex, raw. (top four most important to remember)

#built-in functions to examine objects 
# class() - what kind of object it is (high level)?
# typeof () - what is the object's data type?
# length () - how long it is?
# attributes () - does it have any metadata


#EXERCISE
# making variables and checking what they are - tick off the top 4 data types
AA <- 9
class(AA) #numeric 

Name <- 'Miroslava'
class(Name) #character

BB <- 1:5
class(BB) #integer

x=1
y=2
CC <- y>x
class(CC) #logical



#-------------------------------#
# Data structures
# elements of data types can be combined to form a data structure. elements - as to what you would put in a single cell in excel
# data structures: atomic vector, list, matrix, data frame, factors
# vector most common, collection of elements most commonly of the type

y <- c(1,2,3) # make vector with three elements in it
z <- c('sarah','tracy','john') #vector full of character elements

# NOTE # elements inside vectors of same type

# EXERCISE 
# what happens when you interrogate the type of character vector 
class(z) # character
class(y) #numeric

# lists - values inside can be of several different types
x <- list(1, 'a', TRUE)
x
x[[2]] # retrieve individual elements using double square brackets to reference their index



#-------------------------------#
# Data frames and tibbles
# two-dimensional or rectangular data files. data frames = spreadsheets. store data same format as excel with rows and columns
# column holds elements of same type

# making data.frame
my_dataframe <-data.frame(no=c(1,2,3), c('tracey', 'john', 'pete'), c(TRUE, FALSE, TRUE))
my_dataframe
str(my_dataframe) # R makes guess at type of data of each column

my_dataframe$no = as.factor(my_dataframe$no) # to change from numeric to factor
str(my_dataframe)
# factor is categorical type. telling R that column 1 is actually storing a category rather than a real continous number


#-------------------------------#
# Packages and libraries
# they are a collection of functions made for a specific purpose, can be downloaded and used 

install.packages('') # download and install
library(tidyverse) # load into current workspace
library(ggplot2)
?ggplot2 #creates elegant data visualisations using the grammar of graphics



#-------------------------------#
#Coding best practices
# write modular code. in additon to good coding style, clear variable naming, and including useful comments. makes code easy to read


#-------------------------------#
# making your portfolio website
# a website as a portfolio to showcase your work.
# include pages you develop during modules, which you can customize and build out as much as you like
# work on website, with separate webpage dedicated to each module. ultimately submit final website as your portfolio 


# WEBSITE MUST HAVES
#cover page - short paragraphs about how this is a portfolio of your work and costom photos if you like
# play around with themes tab. change colours and formats
# need at least one page for each module you conduct. 



#-------------------------------#
# WORKSHOP 2 #
# GGPLOT 2 introduction 

library(tidyverse)


















































