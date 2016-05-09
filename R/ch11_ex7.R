#'Correlated Data - Social Inclusion and Exclusion
#'
#'An example of correlated data used in Chapter 11 of the book
#'\emph{Introduction to the New Statistics}.
#'
#'This data is from Cavenaugh & Calin-Jageman (in prep), a registered replication of the finding by
#'Zhong & Leonardelli (2008) that feeling socially excluded makes one feel physically cold.
#'
#'Participants wrote an essay about being socially included or excluded.  They then reported what they
#'perceived to be the room temperature, ostensabily for a maintenance issue.  Temperatures were
#'reported in Fahrenheit but are reported here in Celcius.
#'
#'As a manipulation check, two raters looked at each essay and rated each on a scale from -5
#'(completely excluded) to 5 (completely included).  Ratings were made blind to condition.
#'
#'
#'@source
#'Full details on this study are available at: \url{https://osf.io/95gvy}
#'
#'@format A data frame with 145 rows and 5 variables:
#'\describe{
#'  \item{participant}{Respondent Identifier}
#'  \item{condition}{\emph{Excluded} or \emph{Included}}
#'  \item{rater_1}{Rater 1 rating}
#'  \item{rater_2}{Rater 2 rating}
#'  \item{temperature_rating}{Temperature rating}
#'}
#'
#'@references
#'Cumming, G., & Calin-Jageman, R. (2017).
#'  \emph{Introduction to the New Statistics}. New York; Routledge.
"ch11_ex7"
