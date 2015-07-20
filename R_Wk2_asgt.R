---
title: "R_Wk2_Asm"
output: html_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

# 1. "n Choose r" means n!/ ((n-r)! * r!). Write your own variation of the choose() function, that does not use
#  base functions in R.

# a. Build factorial functions

```{r}
flp <- function (x) { 
y<-1  

for ( i in 1 : x )
{ y = y * i 
  i < - i +1 }
  return(y)
}

nCr <- function(n,r) { a <- flp(n) 
                       b <- flp(n-r) 
                       c <-  flp(r) 
                       return (a/ (b* c))} 


```


# Testing & results
```{r}
nCr(10,4)
choose(10,4)

```



# 1. "n Choose r" means n!/ ((n-r)! * r!). Write your own variation of the choose() function, that does not use
#  base functions in R.

# a. Build factorial functions
flp <- function (x) { 
y<-1  

for ( i in 1 : x )
{ y = y * i 
  i < - i +1 }
  return(y)
}


# b. input factorial function into combination formula

nCr <- function(n,r) { a <- flp(n) 
                       b <- flp(n-r) 
                       c <-  flp(r) 
                       return (a/ (b* c))} 


# Testing & results
nCr(10,4)
choose(10,4)
