##
## I simply set the input x as a matrix and set the solved value "s" as a 
## null then changed every reference to "mean" to "solve"

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  
  
  get <- function() x
  
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  
  getInverse <- function() inv
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}