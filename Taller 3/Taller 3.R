library(ISLR)
library(tidyverse)
library(Hmisc)
library(corrplot)
library(sna)
library(igraph)
library(network)
library(readr)
library(ergm)
library(igraphdata)


###### Punto 4

# Importar la matriz de adyacencia (W) en R
W_file <- "W_matrix_t2.csv"
W <- as.matrix(read.csv(W_file, header = TRUE))

# Importar la matriz de atributos (X) en R
X_file <- "X_matrix_t2.csv"
X <- read.csv(X_file, row.names = 1, header = TRUE)
X <- as.matrix(X)

# Importar la columna 'Predisposition' en R
y_file <- "y_column_t2.csv"
y <- read.csv(y_file, header = TRUE)
y <- ifelse(y == "Alta", 1, 0)

m1<- lnam(y = y, x = X, W1 = W)
summary(m1)


######## Punto 3
