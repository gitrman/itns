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

#'Demo function title here
#'
#'\code{demo_fun} The second paragraph is the description.
#'
#'@param x A numeric vector.
#'@param y A second numeric vector.
#'@return Return demo value here
#'@section MyTestCustomSection:
#'  Demo testing.
#'@examples
#'demo_fun(1, 10)
#'demo_fun(1000, 3)
#'
#'\dontrun{
#'demo_fun("a", 3)
#'}
#' @export
demo_fun <- function(x, y) {
  MBESS::smd(rnorm(10), rnorm(10))
  x + y
}
