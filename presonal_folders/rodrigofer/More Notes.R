
library(tidyverse)
getwd()
cereal <- read_csv("data/cereal.csv")

View(Cereal)

cereal %>%
  group_by(mfr) %>%
  summarise(Max_Protein = max(protein))

cereal %>%
  top_n(10, protein) %>%
  ggplot(aes(x=name))
#ggplot()

View(Cereal2)

table(cereal$protein)