## Put comments here that give an overall description of what your
## functions do

## list of functions to 1)set the value of matrix; 2) get the value of the matrix;
## 3)set the value of inversed matrix; 4) get the value of the inversed matrix

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        setMatrix <- function(y){
                x <<- y
                inverse <<- NULL
        }
        getMatrix <- function() x
        setInverse <- function(cache){
                inverse <<- cache
        }
        getInverse <- function() inverse
        list(setMatrix = setMatrix, getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)
}

## check and calculate inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getInverse()
        if(!is.null(inverse)){
                message("getting cached data") 
                return(inverse)
        }
        data <- x$getMatrix()
        cache <- solve(data)
        x$setInverse(cache)
        cache
}
