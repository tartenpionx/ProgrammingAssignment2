makeCacheMatrix <- function(matrixtocache = matrix()) {
     # We want a function to cache the inverse of a matrix "x"
     # The variable "inverse" contains the value of x
     # When there's no matrix, "inverse" is "NULL".
     inversedmatrix <- NULL
     # We now create a set function to be able to set a specific matrix
     # to the instance of this class of "matrix".
     set <- function(newmatrix) {
          matrixtocache <<- newmatrix
          inversedmatrix <<- NULL
     }
     # We get the matrix in "get"
     get <- function() matrixtocache
     
     # We directly set the value of the matrix in "setinverse".    
     setinverse <- function(newmatrixinverse) inversedmatrix <<- newmatrixinverse
     # We can get the value of the matrix using "getinverse".
     getinverse <- function() inversedmatrix
     # We now put the 4 functions in a list
     list(	set = set,
           get = get,
           setinverse = setinverse,
           getinverse = getinverse
     )

}


cacheSolve <- function(cachematrix) {
     #this function uses the matrix from makeCacheMatrix to return its inverse.
     #if the inverse has already been calculated and the matrix has not changed
     #then the cacheSolve should retrieve the inverse from the cache
     matrixinverse <- cachematrix$getinverse()
     if(!is.null(matrixinverse)) {
          message("getting cached data")
          matrixinverse
     }
          Matrix <- cachematrix$get()
          matrixinverse <- solve(Matrix)
          cachematrix$setinverse(matrixinverse)
          matrixinverse
     
     
}