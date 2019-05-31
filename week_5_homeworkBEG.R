# This script shows some more ggplot graphs.  The first one is a bar chart
#  for the "hwy" variable in the "mpg" dataset (highway miles per gallon
#  for 234 car models).  It took a lot of research to get the axes and labels
#  to work correctly.
# 
# Below that are a couple of dot graphs (geom_point) like the one we did in
#  the week 5 exercise; the first one plots some of the cars with the best
#  highway MPG ratings; the second one plots the length of Old Faithful
#  eruptions against waiting time between eruptions (a scatterplot).

library(ggplot)

temp<-round(mpg[9])  # "hwy" is the ninth column in the dataset.  mpg[9] keeps temp as
                     #  a data frame; using mpg$hwy would make it a vector (type numeric)
ggplot(data=temp)+
  theme_bw()+
  geom_bar(aes(x=hwy),fill="blue")+
  scale_x_continuous(breaks=seq(12,44,1))+
  scale_y_continuous(breaks=seq(0,35,5),limits=c(0,35))+
  geom_text(stat='count',aes(x=hwy,label=..count..),vjust=-0.5)+
  labs(x="MPG Highway")

options(scipen = 999) # Turn off scientific notation

ggplot(mpg, aes(x = cty,y = hwy)) +
  geom_point(aes(col=manufacturer,size=year)) +
  xlim(c(23,40)) +
  ylim(c(25,45)) +
  labs(subtitle="City vs Highway MPG",y="Highway",x="City",title="MPG",caption="Source: mpg dataset")

subset(mpg,hwy>35)  # This yields all the rows where the Highway MPG > 35

ggplot(faithful,aes(x=waiting,y=eruptions))+
  geom_point(aes(col=waiting))+
  xlim(c(30,100))+
  ylim(c(1,6))
