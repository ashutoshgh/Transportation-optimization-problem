
setwd("D:/Operations Research/")


# Load "lpSolve" package

#install.packages("lpSolve")
library(lpSolve)
# Set up cost matrix

###### RAILWAY COSTS
  
costs <- matrix(c(61, 69, 59, 72, 78, 66, 45, 60, 63, 55, 49, 61, 66, 56, 47), nrow = 3)

# Set up constraint signs and right-hand sides
row.signs <- rep("<=", 3) 
row.rhs <- c(15, 20, 15) 
col.signs <- rep(">=", 5)
col.rhs <- c(11, 12, 9, 10, 8)

# Run

lptrans <- lpSolve::lp.transport(costs, "min", row.signs, row.rhs, col.signs, col.rhs)
lptrans$solution

lptrans$objval


###### SHIPPING COSTS

costs <- matrix(c(62.5, 65.3, 59, 68.3, 74.8, 61.3, 47.8, 55, 63.5, 55, 49, 58.8, 63.5, 57.5, 50), nrow = 3)

# Set up constraint signs and right-hand sides
row.signs <- rep("<=", 3) 
row.rhs <- c(15, 20, 15) 
col.signs <- rep(">=", 5)
col.rhs <- c(11, 12, 9, 10, 8)

# Run

lptrans <- lpSolve::lp.transport(costs, "min", row.signs, row.rhs, col.signs, col.rhs)
lptrans$solution

lptrans$objval


###### REDUCING SHIPPING COSTS

costs <- matrix(c(56.25, 58.77, 53.1, 61.47, 67.32, 55.17, 43.02, 49.5, 57.15, 49.5, 44.1, 52.92,
                  57.15, 51.75, 45), nrow = 3)

# Set up constraint signs and right-hand sides
row.signs <- rep("<=", 3) 
row.rhs <- c(15, 20, 15) 
col.signs <- rep(">=", 5)
col.rhs <- c(11, 12, 9, 10, 8)

# Run

lptrans <- lpSolve::lp.transport(costs, "min", row.signs, row.rhs, col.signs, col.rhs)
lptrans$solution

lptrans$objval
