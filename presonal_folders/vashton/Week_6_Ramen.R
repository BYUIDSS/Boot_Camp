#### We are looking at Ramen Ratings

## Load Libraries 
library(tidyverse)
getwd()

ramen <- read_csv("data/ramen-ratings.csv") # this is me reading it in


ramen %>% 
  filter(Brand == "New Touch") %>% ## Yea! this does things 
  summarise(min(Stars))

View(ramen)


### What Brands are in the USA?
colnames(ramen) ## Gives column names

USA_Ramen_Brands <- ramen %>%
  filter(Country == "USA", Stars == 5) %>% ## Lets us select down on rows
  select(Brand, Stars, Variety) %>%  ## This lets you narrow down columns
  #unique() ## Gets rid of repeats
  #filter(Stars == 5)
  group_by(Brand) %>%
  summarise(count = n())

colnames(USA_Ramen_Brands)

USA_Ramen_Brands %>% 
  ggplot(aes(x = reorder(Brand, count) , y = count, fill = Brand)) +
  geom_col()


View(USA_Ramen_Brands)
