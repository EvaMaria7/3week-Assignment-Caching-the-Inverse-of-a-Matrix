#############################################
## Title:   Assignment 2
## Autor:   Eva María Ortiz Gil. 
## Date:    19/08/2015
#############################################

## Write a short comment describing this function
## This function computes the inverse of the special "matrix" created by 
## makeCacheMatrix above. If the inverse has already been calculated (and the 
## matrix has not changed), then it should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  k <- x$getinverse()
  if(!is.null(k)) {  # checks if the inverse has been calculated
    message("getting cached data")
    return(k) # if the inverse is cached, returns it
  }
  data <- x$get()  # else, first get the matrix
  k <- solve(data, ...) # and calculate the inverse
  x$setinverse(k) # next cache the inverse of the matrix
  k # finally, it returns the result
}

