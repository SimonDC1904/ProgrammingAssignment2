## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The first function, `makeCacheMatrix` creates a special "matrix", which is
## really a list containing a function to

## 1.  set the value of the matrix
## 2.  get the value of the matrix
## 3.  set the value of the matrix inverse
## 4.  get the value of the matrix inverse

makeCacheMatrix <- function(x = matrix()) {

        ## Initially set to NULL
        ## Changes when the user sets the value
        inv <- NULL
        
        ## set function
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        
        ## get function
        get <- function() x
        
        ## Manually set the inverse
        setinverse <- function(inverse) inv <<- inverse
        
        ## Get the inverse
        getinverse <- function() inv
        
        ## Create list
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)        

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
