#############################################
## Title:   Assignment 2
## Autor:   Eva María Ortiz Gil. 
## Date:    19/08/2015
#############################################

## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  k <- NULL       # begins by setting the inv to NULL as a placeholder for a future value
  set <- function(y) {   # defines a function to set the vector, x, to a new vector, y, and resets the inverse, inv, to NULL
    x <<- y
    k <<- NULL
  }
  get <- function() x     # returns the vector, x
  setinverse <- function(inv) k <<- inv    #sets the inverse, inv, to inv
  getinverse <- function() k         # returns the inverse, inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)      # returns the 'special vector' containing all of the functions defined
}
