library(ggplot2)
data("diamonds")
View(diamonds) #gives full view in new tab
head(diamonds) #gives first six
str(diamonds) #gives structure of data
colnames(diamonds) #just prints column names
library(tidyverse)
mutate(diamonds, carat_2 = carat*100) #creates new column called carat2 with values equal to carat*100

#tibbles
diamonds_tibble <- as_tibble(diamonds)

#data importing
#data() without arguments will load page of available datasets
data("mtcars") #will add mtcars to environment
mtcars

#readr: reads rectangular data
# csv
# tsv
# fwf: fixed width files
# log: generated record events from operating system
readr_example()#example datasets to try loading
mtcars_csv <- read_csv(readr_example("mtcars.csv"))
spec(mtcars_csv)

#importing spreadsheets
library(readxl)
readxl_example()
xl_temp <- read_excel(readxl_example("type-me.xlsx"))
excel_sheets(readxl_example("type-me.xlsx"))
read_excel(readxl_example("type-me.xlsx"), sheet = "numeric_coercion")