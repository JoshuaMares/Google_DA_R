library("here")   #simplifies referencing files
library("skimr")  #summarizes data and lets you skim it easily
library("janitor")#functions for cleaning data
library("dplyr")
library("palmerpenguins")

#cleaning
skim_without_charts(penguins)
glimpse(penguins)
head(penguins)

penguins %>% 
  select(-species) #everything except species

penguins %>% 
  rename(island_new = island)

rename_with(penguins, toupper) #changes all column names to upp
#to lower is also an option

clean_names(penguins) #only characters, numbers, and underscores allowed

#organizing
penguins %>% arrage(bill_length_mm) #arranges tibble by column name
#asc default, place minus before column name for desc
penguins %>% arrage(-bill_length_mm)
#output islands and the average bill length on that island
penguins %>% group_by(island) %>% drop_na() %>% 
  summarize(mean_bill_length_mm = mean(bill_length_mm))
#max bill length on each island
penguins %>% group_by(island) %>% drop_na() %>% 
  summarize(max_bill_length_mm = max(bill_length_mm))
#can do both in one
penguins %>% group_by(species, island) %>% drop_na() %>%
  summarize(max_bl = max(bill_length_mm), mean_bl = mean(bill_length_mm))
#filters
penguins %>% filter(species == "Adelie")















