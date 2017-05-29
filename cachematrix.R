## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
	set<-function(y){
		m<<-NULL
		x<<-y
	}
	get<-function() x
	setinverse<-function(solve) m<<-solve
	getinverse<-function() m
	invisible(list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse))
}


## Write a short comment describing this function

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



