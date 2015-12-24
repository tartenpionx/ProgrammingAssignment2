## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(cachematrix) {
     matrixInverse <- cachematrix$getinverse()
     result <- NULL
     if(!is.null(matrixInverse)) {
          result <- matrixInverse
     }
     else {
          Matrix <- cachematrix$get()
          newmatrixinverse <- solve(Matrix)
          cachematrix$setinverse(newmatrixinverse)
          result <- newmatrixinverse
     }
     result
}