library(tidyverse)
ggplot(mtcars,aes(x=hp,y=mpg,fill=factor(cyl)))+
  geom_dotplot(binaxis="y",stackdir="up",position="dodge",dotsize=2.1)+
  theme_bw()+
  labs(title="Miles per Gallon vs. Horsepower",subtitle="32 Cars in Motor Trend magazine, 1974")+
  labs(x="Horsepower",y="Miles per Gallon")+
  scale_fill_discrete(name="Engine\nCylinders")+
  theme(legend.text=element_text(size=14),plot.title=element_text(hjust=0.5))+
  theme(plot.subtitle=element_text(hjust=0.5))