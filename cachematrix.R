## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  Inv <- NULL
  get <- function() x
  setInv <- function(Inverse) Inv <<- Inverse
  getInv <- function() Inv
  list(get = get, setInv = setInv, getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  Inv = x$getInv()
  if (is.null(Inv)){
    Inv = solve(x$get())
    x$setInv(Inv)
  } else {
    message("using cached inverse")
  }
  return(Inv)
}
