## Week 4 of Bootcamp!! 

library(tidyverse)
getwd()

cereal <- read_csv("data/cereal.csv")

## What are the top 10 cereals with the most `protien`?

View(cereal)

cereal %>% 
  group_by(mfr) %>% 
  summarise(Max_Protien = max(protein))

cereal %>% 
  top_n(10, protein) %>% 
  ggplot(aes(x = reorder(name, -protein), y = protein, fill = name)) +
  geom_bar(stat = "identity") + coord_flip() +
  theme_light() +
  labs(x = "Protein", y = "Name", title = "This is neat", subtitle = "I don't really like cereal anyway") +
  theme(legend.position = "none",  title = element_text(hjust = 0.5))  
  

cereal %>% 
  top_n(10, protein) %>% 
  ggplot(aes(x = mfr)) +
  geom_bar()



View(cereal2)

table(cereal$protein)

