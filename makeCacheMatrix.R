## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  k <- NULL
  set <- function(y) {
    x <<- y
    k <<- NULL
  }
  get <- function() x
  setinverse <- function(inv) k <<- inv
  getinverse <- function() k
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

