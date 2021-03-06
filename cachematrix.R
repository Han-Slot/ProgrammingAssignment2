## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix())
    xi <- matrix()
    set <- function(y) {
        x <<- y
        xi <<- matrix()
}
    get <- function() x
    setinv <- function(solve) xi <<- solve
    getinv <- function() xi
    list(set = set, get = get,
        setinv = setinv,
        getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        xi <- x$getinv()
        if(!is.null(xi)) {
            message("getting cached data")
            return(xi)
        }
        data <- x$get()
        xi <- solve(data, ...)
        x$setinv(xi)
        xi
}
