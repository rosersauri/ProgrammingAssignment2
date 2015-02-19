## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    ## Initialize the matrix inveerse
    mi <- NULL
    ## Set the value of the matrix
    set <- function(y) {
        x <<- y
        mi <<- NULL
    }
    # Get the value of the matrix
    get <- function() x
    # Set the value of the inverse
    setinv <- function(solve) mi <<- solve
    # Get the value of the  inverse
    getinv <- function() mi
    list(set=set, get=get, setinv=setinv, getinv=getinv)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    mi <- x$getinv()
    if(!is.null(mi)) {
        message("getting cached data")
        return(mi)
    }
    matrix <- x$get()
    mi <- solve(matrix, ...)
    x$setinv(mi)
    mi  
}
