## This pair of functions will use cache data to get the inverse of a matrix

## This creates the special "matrix" that will cache its inverse

makeCacheMatrix <- function(x = matrix()) {
       inver <- NULL
       set <- function(y) {
              x <<- y
              inver <<-NULL
       }
       get <- function() x
       setInverse <- function(inverse) inver <<- inverse
       getInverse <- function() inver
       list(set = set,
            get = get,
            setInverse = setInverse,
            getInverse = getInverse)
}


## This will compute the matrix to get the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       inv <- x$getnInverse()
       if (!is.null(inver)){
              message("getting cached data")
              return(inver)
       }
       matr <- x$get()
       inver <- solve(matr, ...)
       x$getInverse(inver)
       inver
}

