#'Two Independent Groups - Clean Moral Original Study
#'
#'An example of data from a study with a two independent groups design used in Chapter 7 of the book
#'\emph{Introduction to the New Statistics}.
#'
#'Some researchers believe that moral judgements are based not only on rational considerations but on one's current emotional state.
#'To what extent can recent emotional experiences influence moral judgements?  Schnall et al. (2008) examined this question by manipulating
#'feelings of cleanliness and purity and then observing if this changes how harshly participants judged the morality of others.
#'Participants completed a word scramble task with either neutral words (neutral priming) or words related to
#'cleanliness (cleanliness prime).  All students then completed a set of moral judgements about controversial scenarios
#'
#'@format A data frame with 40 rows and 3 variables:
#'\describe{
#'  \item{participant}{Respondent identifier}
#'  \item{condition}{Type of words unscrambled: neutral priming or clean priming}
#'  \item{moral_judgements}{Average of moral judgement scale, 6 items, all ranked from 0-9}
#'}
#'
#'@source
#'The dataset is available online \url{https://osf.io/4cs3k} and is Study 1 from:
#'
#'Schnall, S., Benton, J., & Harvey, S. (2008). With a Clean Conscience: Cleanliness Reduces the Severity of Moral Judgments.
#'\emph{Psychological Science, 19}, 1219-1222. \url{http://doi.org/10.1111/j.1467-9280.2008.02227.x}
#'
#'@references
#'Cumming, G., & Calin-Jageman, R. (2017).
#'  \emph{Introduction to the New Statistics}. New York; Routledge.
#'
#'@seealso \code{\link{clean_moral2}, which is a replication of the Schnall et al study}
"clean_moral1"


#'Two Independent Groups - Clean Moral Replication Study
#'
#'An example of data from a study with a two independent groups design used in Chapter 7 of the book
#'\emph{Introduction to the New Statistics}.
#'
#'This data comes from a replication of the study described in \code{\link{clean_moral1}}
#'
#'After publication of that study, Cheung, Donnellan & Johnson (2014) attempted a close replication,
#'using the same manipulation and the same measure of moral judgement.
#'
#'@format A data frame with 208 rows and 3 variables:
#'\describe{
#'  \item{participant}{Respondent identifier}
#'  \item{condition}{Type of words unscrambled: neutral priming or clean priming}
#'  \item{moral_judgements}{Average of moral judgement scale, 6 items, all ranked from 0-9}
#'}
#'
#'@section Source:
#'The dataset is available online at:  \url{https://osf.io/apidb}  and is Study 1 from:
#'
#'Johnson, D. J., Cheung, F., & Donnellan, M. B. (2014). Does cleanliness influence moral judgments?: A direct replication of Schnall, Benton, and Harvey (2008).
#'\emph{Social Psychology, 45}, 209-215. \url{doi:10.1027/1864-9335/a000186}
#'
#'Note that this a cleaned up version of the online dataset - all participants excluded for various reasons (e.g. experimenter error) have been deleted.
#'
#'@section References:
#'Cumming, G., & Calin-Jageman, R. (2017).
#'  \emph{Introduction to the New Statistics}. New York; Routledge.
#'
#'@seealso \code{\link{clean_moral1}}
"clean_moral2"



