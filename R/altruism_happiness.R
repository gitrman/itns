#'Regression Example - Altruism and Happiness
#'
#'An example dataset used in Chapter 12 of the book
#'\emph{Introduction to the New Statistics}.
#'
#'@source
#'Most of the data comes from:
#'
#'Brethel-Haurwitz, K. M., & Marsh, A. a. (2014). Geographical differences in subjective well-being predict extraordinary altruism.
#'\emph{'Psychological Science, 25}, 762-771. \url{http://doi.org/10.1177/0956797613516148}
#'
#'Data were extracted from Figure 1 using \url{http://arohatgi.info/WebPlotDigitizer/app/}
#'
#'Some data are from a 2013 Gallup poll, not the Brethel-Haurwitz et al paper.
#'
#'@format A data frame with 50 rows and 7 variables:
#'\describe{
#'  \item{state}{Factor with 50 levels}
#'  \item{well_being_2010}{Well being score in 2010}
#'  \item{kidney_rate}{Rate of non-directed kidney donation (# donations / total state population) from 1999-2010}
#'  \item{well_being_2013}{Well being score in 2013}
#'  \item{well_being_2010_rounded}{Well Being score from 2010 rounded to two decimal places}
#'  \item{kidney_rate_per1000}{\emph{kidney_rate} variable rescaled so that the donation rate is expressed per thousand people}
#'  \item{wb_change}{Change in well being from 2010 to 2013. Note that the rounded values were used to compute this variable,
#'  for consistency with the Excel file from which this dataset was extracted.}
#'}
#'
#'@references
#'Cumming, G., & Calin-Jageman, R. (2017).
#'  \emph{Introduction to the New Statistics}. New York; Routledge.
"altruism_happiness"
