## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# makeCacheMatrix
# INPUTS: void
#OUTPUT: list assigned to variable with different inner functions
makeCacheMatrix <- function(x = matrix()) {

    #defining inner functions for definition of the variable
    inv <- NULL
    set <- function (y){  
      x<<- y
      inv <<- NULL
    }
    #defining the inner functions for opperations in the variable
    get <- function() x
    setInv <- function(solve) inv <<- solve
    getInv <- function() inv
    list(set = set,get = get,setInv=setInv, getInv=getInv)
  
    
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  #defining funcitons for variable fileds write-reading
  inv<-x$getInv()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  #defining functions for variable fields operation
  data<-x$get()
  inv <-solve(data,..)
  x$setInv(inv)
  inv
  ## Return a matrix that is the inverse of 'x'
}
