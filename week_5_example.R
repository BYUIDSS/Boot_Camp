library(ggplot2) # Loading our library

View(midwest) # Viewing our data set in its own tab

options(scipen = 999) # This changes our notation from scientific

ggplot(midwest, aes(x = area, y = poptotal)) + # Identifying which data set and columns we want to use
  geom_point(aes(col = state, size = popdensity)) + # Adding points according to color and size
  xlim(c(0, 0.1)) + # this zooms in on the x axis
  ylim(c(0, 500000)) + # this zooms in on the y axis
  labs(subtitle = "Area Vs Population", # This (and the next four lines) identify our labels
       y = "Population", 
       x = "Area", 
       title = "Scatterplot", 
       caption = "Source: midwest") 

#josh