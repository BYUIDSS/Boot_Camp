#install
library(mosaic)
library(tidyverse)
?mosaic
View(KidsFeet)

install.packages("mosaic")
## %>% ctrl +shift + m 
#side arrow >
#ctrl + shift + m

KidsFeet %>%
  ggplot(aes(x = width, y = length)) +
  #aes is aesthetics
  geom_point()


install.packages("usethis")
library(usethis)
use_git_config(user.name = "rodrigomaceno", user.email = "fer18014@byui.edu")
