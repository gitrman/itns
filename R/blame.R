#'Two Way Design - Blame 1
#'
#'An example dataset used in Chapter 14 of the book 
#'\emph{Introduction to the New Statistics}.
#'
#'Gilbert, Guinn, and Reppucci (2015) conducted a series of online studies to explore how participants assign blame
#'when hearing about a crime. In study 1, participants from the U.S. read about a crime committed by a young man.
#'The name of the perpetrator was varied, though, to indicate that he was either Black or White.  In addition, details
#' about the perpetrator were varied to indicate that he had either low or high socio-economic status (SES).
#'Participants were asked to envision serving on a jury charged with judging the perpetrator, and rated how blameworthy
#'they found him on a scale from 1 to 6.
#'
#'This is a simplified dataset from the study, that has been graciously shared by the authors.
#'
#'@format A data frame with 364 rows and 4 variables:
#'\describe{
#'  \item{id}{Participant ID}
#'  \item{race}{\emph{black} or \emph{white}}
#'  \item{ses}{Socio-economic status: \emph{high} or \emph{low}}
#'  \item{blame}{Rating of blame on 1 to 6 scale}
#'}
#'
#'@source
#'You can find the materials and data on the Open Science Framework: \url{https://osf.io/xtkve}
#'
#'@references
#'Cumming, G., & Calin-Jageman, R. (2017).
#'  \emph{Introduction to the New Statistics}. New York; Routledge.
#'
#'@seealso \code{\link{blame2}}
"blame1"


#'Two Way Design - Blame 2
#'
#'An example dataset used in Chapter 14 of the book 
#'\emph{Introduction to the New Statistics}.
#'
#'The data here is from a study that was a direct replication of that described in \code{\link{blame1}}.
#'
#'A new set of online U.S. participants again read about a crime being committed.  Indicators of race and SES were again
#'varied, and participants rate blame on a scale from 1 to 6.
#'
#'One key difference with this replication is that the description of the crime was altered to make it clear that
#'the perpetrator was guilty.  Thus, blame ratings are higher than in the first study, where it was slightly ambiguous
#'if the person described has committed the crime.
#'
#'This is a simplified dataset from the study, that has been graciously shared by the authors.
#'
#'@format A data frame with 432 rows and 4 variables:
#'\describe{
#'  \item{id}{Participant ID}
#'  \item{race}{\emph{black} or \emph{white}}
#'  \item{ses}{Socio-economic status: \emph{high} or {low}}
#'  \item{blame}{Rating of blame on 1 to 6 scale}
#'}
#'
#'@source
#'You can find the materials and data on the Open Science Framework: \url{https://osf.io/xtkve}
#'
#'@references
#'Cumming, G., & Calin-Jageman, R. (2017).
#'  \emph{Introduction to the New Statistics}. New York; Routledge.
#'
#'@seealso \code{\link{blame1}}
"blame2"
