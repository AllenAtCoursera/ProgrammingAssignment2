## Below 2 functions maintly help to cache the inverse of a matrix.

## --------------------------------------------------------------------------
## This function creates a special "matrix" object that can cache its inverse
## Assumption on function arugment x:
## The matrix supplied, x, is asummed to be always invertible.
## --------------------------------------------------------------------------
makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        set <- function(y){
                x <<- y
                inverse <<- NULL #Null the inverse once a new matrix is set
        }
        get <- function() x
        setInverse <- function(i) inverse <<- i
        getInverse <- function() inverse
        list(set = set, get = get,
             setInverse = setInverse, getInverse = getInverse)
}

## --------------------------------------------------------------------------
## This function computes the inverse of the special "matrix" returned by
## "makeCacheMatrix" above. If the inverse has already been calculated
## (and the matrix has not changed, i.e. not yet call the set method again),
## then the cachesolve should retrieve the inverse from the cache.
## --------------------------------------------------------------------------
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}