---
title: "RWorksheet#4B"
author: "Marivic Amuan"
date: "2023-11-08"
output: pdf_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

```{r}

#1. Using the for loop, create an R script that will display a 5x5 matrix as shown in Figure 1. It must contain vectorA = [1,2,3,4,5] and a 5 x 5 zero matrix.
#FOR LOOP

  vectorA <- c(1, 2, 3, 4, 5)

x <- matrix(0, nrow = 5, ncol = 5)

for (i in 1:5) {
  for (p in 1:5) {
    if (i == p) {
      x [i, p] <- vectorA[i]
    }
    
  }
}


abs(x)

```
``` {r}

#2. Print the string "*" using for() function. The output should be the same as shown in Figure

victor<- c(1, 2, 3, 4, 5)

m <- matrix("*", nrow = 5, ncol = 5)

for (i in 1:5) {
  for (l in 1:5) {
    if (i == l) {
      m [i, l] < victor[i]
      
    }
  }
}

print(m)

```