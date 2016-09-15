cacheSolve <- function(x, ...) {
  inver <- x$getInverse()
  if (!is.null(inver)) {
    message("getting cached data")
    return(inver)
  }
  matrix <- x$get()
  inver <- solve(matrix, ...)
  x$setInverse(inver)
  inver
}