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
        inv <- NULL
        
        ## Set function
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        
        ## get function
        get <- function() x
        
        ## Set the inverse
        setinverse <- function(inverse) inv <<- inverse
        
        ## Get the inverse
        getinverse <- function() inv
        
        ## Create list
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)        
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## this function  checks to see if a result is already cahed
        ## - if cache then return cache value
        ## - if no cache value compute and store
        
        ## Get inverse of x
        inv <- x$getinverse()
        
        ## Check value of result and return if not null 
        if(!is.null(inv)) {
                ## return cache value		
                message("Getting cached matrix")
                return(inv)
        }
        
        ## No cached value
        ## Get the matrix itself
        data <- x$get()
        
        ## Find the inverse
        inv <- solve(data, ...)
        
        ## Cache this result in the object
        x$setinverse(inv)
        
        ## Return calculated result
        message("Calculated Value")
        inv
}
