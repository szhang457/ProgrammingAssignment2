## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function contains four subfunctions, 
makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
##the first one is to set the value of matrix
	set<-function(y){
		m<<-NULL
		x<<-y
	}
##the second one is to get the value of matrix
	get<-function() x
##the third one is set the inverse matrix
	setinverse<-function(solve) m<<-solve
##the fourth one is get the inverse matrix
	getinverse<-function() m
	invisible(list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse))
}


## Write a short comment describing this function
##This function will return the inverse matrix if it has been cached
##or it will calculate and cache the inverse matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m<-x$getinverse()
	if(!is.null(m)) {
		message("getting data")
		return(m)
	}
	data<-x$get()
	m<-solve(data)
	x$setinverse(m)
	m
}



