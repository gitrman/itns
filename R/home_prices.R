#'Regression Example - Home Prices
#'
#'An example dataset used in Chapter 12 of the book
#'\emph{Introduction to the New Statistics}.
#'
#'This dataset contains a collection of real estate listings in San Luis Obispo county in California, United States.
#'
#'@source
#'This is a subset of the first 300 rows of the full dataset, which can be found at
#'\url{https://wiki.csc.calpoly.edu/datasets/wiki/Houses}
#'
#'@format A data frame with 300 rows and 7 variables:
#'\describe{
#'  \item{mls}{Multiple listing service number for the house (unique ID)}
#'  \item{location}{City/town where the house is located (factor with 27 levels)}
#'  \item{price}{Most recent listing price of the house (in dollars)}
#'  \item{bedrooms}{Number of bedrooms}
#'  \item{bathrooms}{Number of bathrooms}
#'  \item{size}{Size of the house in square feet}
#'  \item{status}{Type of sale - \emph{Foreclosure} or\emph{Short Sale}}
#'}
#'
#'@references
#'Cumming, G., & Calin-Jageman, R. (2017).
#'  \emph{Introduction to the New Statistics}. New York; Routledge.
"home_prices"
