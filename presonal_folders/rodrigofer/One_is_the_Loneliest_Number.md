---
title: "One is the Loneliest Number"
author: "Rodrigo Ferreira"
date: "November 11, 2020"
output:
  html_document:  
    keep_md: true
    toc: true
    toc_float: true
    code_folding: hide
    fig_height: 6
    fig_width: 12
    fig_align: 'center'
---


```r
## loading libraries
#install.packages("tidyverse")
library(tidyverse)
```


```r
## lets start by reading in the data 
## Don't forget to set the session!!
## Lets read in the cereal and the pokemon datasets
cereal <- read_csv("../../data/cereal.csv")
pokemon <- read_csv("../../data/pokemon.csv")
```


## Summary Stats

Summary Stats Vocab list:

 * Mean - the center of mass of quantitative data, it is also known as the average - `mean(object)`
 * Median -  the middle of the data - `median(object)`
 * Mode - most commonly occurring digit ever - `table(object)`
 * Minimum - the smallest occurring data point - `min(object)`
 * Maximum - the largest occurring data point - `max(object)`
 * Quartiles - a measure of center and spread - `quantile(object, percentile)`
 * Standard Deviation - a measure of how spread out the data is - `sd(object)`
 
 
## Questions

##### Pokemon
 
What is a the average `attack` of a water `type1` one pokemon? What water `type1` pokemon is the fastest? How do these compare with the rest of the water type pokemon looking at `attack` and `speed` respectively?
 
To answer some of these questions we might need to filter out some of our data it would be good to look at the `filter()` function. (Other functions that might be fun to play with are `group_by()`, `summarise()`, `select()`, `c()`, and `mutate()`)
 


 
 
##### Cereal

How do the distributions of `fiber` compare across the different manufactures? 





What are the top 10 cereals with the most `protien`?




What are the 5 cereals with the lowest `rating`? Why do the have those ratings?





## Extra!!

What's a question you have? Can you answer that with data? Find the data set you need!


 
 
 



