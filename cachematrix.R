## Function creates a special matrix
## << used for assigning the values

## simple code to create a matrix

makeCacheMatrix <- function(x = matrix()) {
s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}




## CacheSolve creates the inverse of the matrix created / defined in the above code

cacheSolve <- function(x, ...) {

 s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s        ## Return a matrix that is the inverse of 'x'
}
