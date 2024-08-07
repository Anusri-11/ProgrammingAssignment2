makeCacheMatrix <- function(x = matrix()) {
  mat <- NULL
  inv_cache <- NULL
  setMatrix <- function(x) {
    mat <<- x
    inv_cache <<- NULL
  }
  getInverse <- function() {
    if (is.null(inv_cache)) {
      inv_cache <<- solve(mat)
    }
    inv_cache
  }
  list(setMatrix = setMatrix, getInverse = getInverse)
}
cacheSolve <- function(x, ...) {
        inv_cache <- x$getInverse()
        inv_cache
}
