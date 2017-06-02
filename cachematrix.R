## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function gets and sets the matrix and caches the inverse
## This takes a single matrix as input and returns a lit of functions
## that includes getting and setting a matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
  set <- function(y) {
     x <<- y
     m <<- NULL
  }
  
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function
## This function caches the result computed in the above function
## The function solve() is used to compute the inverse of the matrix.
## If the cacheMatrix is not already cashed with inverse matrix, the function would 
## compute the inverse to the variable and return the inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x$getinverse()
  if(!is.null(m)) {
      message("Getting Cached Data")
      return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
