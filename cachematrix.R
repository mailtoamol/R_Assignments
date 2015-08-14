## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  	 matriX <- NULL
	
	##Get the metriX passed as an argument to makeCacheMatrix function
	getX <- function(){ 
		x
	}

	##Get the value of metriX
	getMatrix <- function() {
		matriX
	}
	
	##Set the value of metriX 
	setMatrix <- function(setThis) {
		matriX <<- setThis
	}
	
	
	list(
		getX=getX,
		getMatrix=getMatrix,   
		setMatrix=setMatrix
	   )

}

## Write a short comment describing this function

cacheSolve <- function(x=matrix(), ...) {
	## if Matrix is already cached, it will have some value stored
	Matrix <- x$getMatrix()
    	if(!is.null(Matrix)){
		  message("Matrix is already Cached. Returning Cached data")
		  return(Matrix)
    	}
	else{ ## if Matrix is empty, then get the matrix 
		Matrix <- x$getX()
		
		##This generic function solves the equation 
		## Here in this function (solve) second value (b) is missing, hence taken as identity 
		## results in inverse of matrix
		Matrix <- solve(Matrix, ...)
		x$setMatrix(Matrix)
		Matrix
	}
}
