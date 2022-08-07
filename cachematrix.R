## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## (MY COMMENT) this function literally does the same thing as the example except for the fact that instead of a vector and it's mean it has a matrix and it's inverse value.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinv <- function(inverse) m <<- inverse
    getinv <- function() m
    list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
## (MY COMMENT) this function literally does the same thing as the example except for the fact that instead of a vector and it's mean which was calculated by 'mean()' it has a matrix and it's inverse value and uses the 'solve()' function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        m
}
