## Take inverse of a square invertible matrix and cache it 
## Use the <<- operator to maintain state within the environment of the function

## create special matrix object that can cache its' inverse

makeCacheMatrix <- function(x = matrix()) {
        #make an empty matrix
        m <- NULL
        # 
        set <- function(y) {
                x <<- y         
                m <<- NULL
        }
        get <- function() x
        setmatrix <- function(matrix) x <<- matrix
        getmatrix <- function()
        x <- getmatrix
}


## inputs special matrix ^^ and computes its' inverse- may retrieve inverse from cache on condition

cacheSolve <- function(x, ....) {
        m <- x$solve()
        if (!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        m
}
