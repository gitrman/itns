#'Two Way Design - Self Explain Time
#'
#'An example dataset used in Chapter 15 of the book 
#'\emph{Introduction to the New Statistics}.
#'
#'Self-explaining is a study strategy where students explain material to themselves as they learn.
#'McEldoon, Durkin & Rittle-Johnson (2013) examined the benefits of self-explaining for grade school students learning math.
#'Students first took a pre-test for conceptual knowledge, then studied, then took a post-test for conceptual knowledge.
#'Some students were randomly assigned to normal study, others to self-explain.  However, self-explaining takes longer
#'than traditional study, so a third set of children completed regular study + additional practice.
#'
#'Data from all 3 conditions is provided here, graciously shared by the authors.  The scores are the percentage correct on each phase
#'of testing.  There were additional measures made in this study that are not in this simplified data set.
#'
#'@format A data frame with 138 rows and 5 variables:
#'\describe{
#'  \item{id}{Participant ID}
#'  \item{condition}{Between groups factor with 3 levels}
#'  \item{grade}{Grade level of child}
#'  \item{time}{Within groups factor with 2 levels - \emph{pre} and \emph{post}}
#'  \item{knowledge}{Score on conceptual knowledge test}
#'}
#'
#'@source
#'McEldoon, K. L., Durkin, K. L., & Rittle-Johnson, B. (2013). Is self-explanation worth the time? A comparison to
#'additional practice. \emph{The British Journal of Educational Psychology, 83}, 615-632.
#'\url{http://doi.org/10.1111/j.2044-8279.2012.02083.x}
#'
#'@references
#'Cumming, G., & Calin-Jageman, R. (2017).
#'  \emph{Introduction to the New Statistics}. New York; Routledge.
"self_explain_time"






