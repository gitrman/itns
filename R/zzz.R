.onLoad <- function(libname, pkgname) {
  op <- options()
  op.escir <- list(
    escir.pdec = 3,
    escir.dec = 2
  )
  toset <- !(names(op.escir) %in% names(op))
  if(any(toset)) options(op.escir[toset])

  invisible()
}
