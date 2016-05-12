#'Two Dependent Groups - Sensitization
#'
#'An example of data from a study with a two dependent groups design used in Chapter 8 of the book 
#'\emph{Introduction to the New Statistics}.
#'
#'To what extent does a painful experience modify reflex responses?  To find out, sea slugs had their
#'reflexes timed on the left and right side of their body.  Each slug was then administered a painful
#'shock to one side of the body.  The next day, reflexes were again timed on both sides of the body.
#'Longer reflex responses indicate the animals has become more sensitive/fearful of being touched.
#'
#'@format A data frame with 12 rows and 6 variables:
#'\describe{
#'  \item{animal_id}{Identifier}
#'  \item{trained_side}{Side on which animal received sensitization training (Left or Right)}
#'  \item{trained_base}{Duration (in seconds) of tail-elicited siphon withdrawal reflex on trained side, average of 3 consecutive measures, taken before training}
#'  \item{trained_24h}{Duration (in seconds) of tail-elicited siphon withdrawal reflex on trained side, average of 3 consecutive measures, taken 24 hours after training}
#'  \item{untrained_base}{Duration (in seconds) of tail-elicited siphon withdrawal reflex on untrained side, average of 3 consecutive measures, taken before training}
#'  \item{untrained_24h}{Duration (in seconds) of tail-elicited siphon withdrawal reflex on untrained side, average of 3 consecutive measures, taken 24 hours after training}
#'}
#'@source
#'This data is availble online at \url{https://osf.io/ts9ea/} and was reported in Figure 2 of:
#'
#'Herdegen, S., Conte, C., Kamal, S., Calin-Jageman, R. J., & Calin-Jageman, I. E. (2014).
#'Immediate and Persistent Transcriptional Correlates of Long-Term Sensitization Training at Different CNS Loci in Aplysia californica.
#'\emph{PloS One, 9}, e114481. \url{http://doi.org/10.1371/journal.pone.0114481}
#'
#'@references
#'Cumming, G., & Calin-Jageman, R. (2017).
#'  \emph{Introduction to the New Statistics}. New York; Routledge.
"sensitization"
