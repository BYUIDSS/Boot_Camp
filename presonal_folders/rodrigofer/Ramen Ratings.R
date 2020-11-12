#### we are looking at Ramen  Ratings

## Load Libraries
library(tidyverse)
getwd()
ramen <- read_csv("data/ramen-ratings.csv")

ramen %>%
  filter(Brand == "New Touch") %>%
  summarise(min(Stars))

View(ramen)

### What brands are in the USA?
colnames(ramen) ## Gives column names

USA_Ramen_Brands <- ramen %>%
  filter(Country == "USA") %>% ## Lets us select down on rows
  select(Brand, Stars, Variety) %>% ##  This lets you narrow down columns / what column we want to look down on
  unique()

View(USA_Ramen_Brands)  
