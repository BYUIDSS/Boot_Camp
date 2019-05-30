# This script shows some homework I did.
# I made a plot similar to the "midwest" one but for the mpg
#   dataset (I plotted the cars with the best MPG ratings).
#   Then I sifted out the ones with the best MPG to see what
#   make and model they were.
# Finally, I made a plot for the eruptions of Old Faithful with
#   waiting time on the x-axis and eruption length on the y-axis.

library(ggplot2)

options(scipen = 999) # Turn off scientific notation

ggplot(mpg, aes(x = cty,y = hwy)) +
  geom_point(aes(col=manufacturer,size=year)) +
  xlim(c(23,40)) +
  ylim(c(25,45)) +
  labs(subtitle="City vs Highway MPG",y="Highway",x="City",title="MPG",caption="Source: mpg dataset")

subset(mpg,hwy>35)  # This yields all the rows where the Highway MPG > 35

ggplot(faithful,aes(x=waiting,y=eruptions))+
  geom_point(aes(col=waiting,size=eruptions))+
  xlim(c(30,100))+
  ylim(c(1,6))
