## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  inverse <- NULL

  #set the value of the matrix
  set <- function (n){
    m <<- n
    inverse <<- NULL
  }

  get <- function () m

  setInverse <- function (inv) inverse <<- inv
  getInverse <- function () inverse
  list(set = set, get=get,
       setInverse = setInverse,
       getInverse = getInverse
       )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inverse <- m$getInverse()

  if ( ! is.null(inverse) ){
    message ("getting cached data")
    return (inverse)
  }
  matrix <- m$get()
  inverse <- solve (matrix)
  m$setInverse(inverse)
  inverse
}
