#'One Way Design - Inauthenticity
#'
#'An example dataset used in Chapter 14 of the book 
#'\emph{Introduction to the New Statistics}.
#'
#'"To thine own self be true" is the advice of Polonious in Hamlet.  What happens, though, when we act contrary
#'to our true selves, and experience inauthenticity?  Gino, Kouchaki, & Galinsky (2015) proposed that feeling
#'inauthentic leads to feelings of impurity, and that the feeling of impurity drives efforts at moral cleansing,
#'either by doing good deeds or by seeking other cleansing acts and rituals.
#'
#'In one study (Study 2), participants were asked to recall a memory of a time when they had behaved either as their
#'authentic true selves or when they had behaved inauthentically.  There were four independent groups:
#'\enumerate{
#'  \item Authentic general: participants recalled a time when they had behaved as their authentic true selves
#'  \item Inauthentic general: participants recalled a time when they had behaved inauthentically
#'  \item Authentic - not truth: participants recalled a time when they had behaved as their authentic true selves, but in a way not just related to telling the truth to someone
#'  \item Inauthentic  - not lying: participants recalled a time when they had behaved inauthentically, but in a way that was not just related to lying to someone.
#'}
#'
#'After recalling these memories, participants were asked to rate how much they desired different products from 1
#'(completely undesirable)  to 7 (completely desirable).  The products were either cleaning-related products or neutral products.
#'For each participant, an average was created for the cleaning-related products and for the neutral products.
#'Participants also completed a scale measuring how much they felt alienated from their true selves.
#'
#'@format A data frame with 838 rows and 4 variables:
#'\describe{
#'  \item{group}{Experimental condition (four levels)}
#'  \item{cleaning}{Cleaning products score}
#'  \item{neutral}{Neutral products score}
#'  \item{alienation}{Alienation score}
#'}
#'
#'@source
#' Gino, F., Kouchaki, M., & Galinsky, A. D. (2015). The Moral Virtue of Authenticity: How Inauthenticity Produces Feelings of
#' Immorality and Impurity. \emph{Psychological Science, 26}, 983-996. \url{http://doi.org/10.1177/0956797615575277}
#'
#'The data is available at \url{https://osf.io/sd76g}
#'
#'The data has been reshaped into a format that is easy to analyse in R.
#'
#'@references
#'Cumming, G., & Calin-Jageman, R. (2017).
#'  \emph{Introduction to the New Statistics}. New York; Routledge.
"inauthentic"
