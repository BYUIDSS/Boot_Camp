---
title: "Look at this Graaaaaph"
author: "YOUR NAME"
date: "October 14, 2020"
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
library(tidyverse)
```

## Ggplot 

The library `ggplot` can be accessed alone or you can accesses it through the `tidyverse` package. The `ggplot` package is a very nice package for making clean and aesthetically pleasing visualizations. You are able to create graphs with base R functions, let's compare the graphing the two different types. 




```r
## lets start by reading in the data 
## Don't forget to set the session!!
## Lets read in the cereal and the pokemon datasets
```

#### Scatterplots 
 
Scatterplots are good for 2 quantitative variables, it's you basic (x,y) graph. 


```r
## We don't want to keep reading the dataset in to our environment so we're going to graph in this chunk.

## First the base r plot 
#plot(y ~ x, data=NameOfYourData)


## Now the ggplot
# data %>% 
#   ggplot(aes(x = Colname, y = Colname)) +
#   geom_point()
```


#### Bar Charts 

Bar charts are counting graphs so the are best for Qualitative variables. You will want your variables to be factors.



```r
## Base r

#barplot(table(data$Colname), col = "blue", xlab = "Name")

## ggplot 
# data %>%
#   ggplot(aes(x = Colname)) +
#   geom_bar(position = "dodge", color = "black") +
#   labs(x = "Name")
  
## For if you want more than one variale 
# data %>%
#   ggplot(aes(x = Colname, fill = Colname)) +
#   geom_bar(position = "dodge", color = "black") +
#   labs(x = "Name")
```

If you want to try out other colors go [here](http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf)

#### Boxplots

Boxplots are a great way to depict the basic five-number summary graphically. So its good for comparing distributions between different groups.


```r
## Base r
#boxplot(object ~ group, data=NameOfYourData)

## Now the ggplot
# data %>% 
#   ggplot(aes(x = Colname, y = Colname)) +
#   geom_boxplot()
```



## Extra's 

Create your own graph using the ggplot [cheetsheet](https://rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf)
Try somthing fun! 



```r
## HINT to make more R chunks you can hit ctrl+alt+i
```



