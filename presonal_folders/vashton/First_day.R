#install.packages("mosaic") # this installs the package 
#install.packages("tidyverse")
library(mosaic) ## THis open package for us
library(tidyverse)

?mosaic

?KidsFeet

View(KidsFeet)

# Graphing Kidsfeet X = width and Y =  length

## %>% crt +shift + m 

KidsFeet %>% 
  ggplot(aes(x = width, y = length)) +
  geom_point()


