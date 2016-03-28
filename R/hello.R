# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

devtools::use_package("MBESS")

hello <- function() {
  print("Hello, world!")
}

hello2 <- function() {
  print("Hello, world!")
}

#'Demo function title here
#'
#'\code{demo_fun} The second paragraph is the description. is used to sum two
#'numbers and I want to make it well longer than 80 characters ok.
#'
#'@param x A numeric vector.
#'@param y A second numeric vector.
#'@return Return demo value here
#'@section MyTestCustomSection:
#'  here is my test custom section does it work
#'@examples
#'demo_fun(1, 10)
#'demo_fun(1000, 3)
#'
#'\dontrun{
#'demo_fun("a", 3)
#'}
#'@seealso \code{\link{hello}} for more info
#' @export
demo_fun <- function(x, y) {
  x + y
}

