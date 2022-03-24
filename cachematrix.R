##
## I simply set the input x as a matrix and set the solved value "s" as a 
## null then changed every reference to "mean" to "solve"

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {                               ## set the value of the matrix 
    x <<- y
    inv <<- NULL
  }
  get <- function() x                                ## get the value of the matrix
  setInverse <- function(inverse) inv <<- inverse    ## set the value of the inverse
  getInverse <- function() inv                       ## get the value of the inverse
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


cacheSolve <- function(x, ...) {
  ## Return a matrix that is the
  inv <- x$getInverse()                              ## inverse of "x"
  if (!is.null(inv)) {
    message("getting cached data")             ## The operation is displayed
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}