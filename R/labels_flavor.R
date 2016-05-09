#'Two Dependent Groups - Beverage Labels and Flavour
#'
#'An example of data from a study with a two dependent groups design used in Chapter 8 of the book
#'\emph{Introduction to the New Statistics}.
#'
#'To what extent does the label on a beverage influence your enjoyment of the beverage?  To find out,
#'participants were asked to take part in a taste-test for grape juice.  Each participant was poured 3 samples of grape juice:
#'one from a bottle of Welch's Grape Fruit (a mid-level brand), one from a bottle of Generic Grape Fruit (a low-price brand),
#'and one from a bottle of Whole Foods Organic Grape Juice (a high-priced brand).
#'The trick was: it was all the same grape juice!  Prior to the start of the project, the experimenters had poured out the original
#'contents and poured the same Welch's grape juice into each bottle.
#'
#'After each sample, participants rated their enjoyment of that juice (scale from 1 to 10).
#'They also reported how much they would pay for a 1 gallon bottle of that juice ($1-10, whole dollar amounts).
#'Finally, participants were debriefed about the study. Participants who expressed some suspicion during the debriefing
#'that all the juices were actually the same were marked as \emph{suspcious}; participants who expreseed no suspcion were marked \emph{not suspicious}.
#'
#'This is a simplified dataset which contains data for only 2 of the 3 juice labels: Organic and Generic.
#'
#'@format A data frame with 51 rows and 6 variables:
#'\describe{
#'  \item{participant_id}{Respondent identifier}
#'  \item{enjoy_generic}{Degree of enjoyment of the juice sample with the Generic label, 1-10}
#'  \item{enjoy_organic}{Degree of enjoyment of the juice sample with the Organic label, 1-10}
#'  \item{pay_generic}{Price willing to pay for the with  the Generic label, marked as $1-10 dollars in whole dollar amounts}
#'  \item{pay_organic}{Price willing to pay for the with  the Organic label, marked as $1-10 dollars in whole dollar amounts}
#'  \item{suspicious}{Factor with two levels - \emph{suspicious} and \emph{not suspicious}}
#'}
#'
#'@source
#'The data is from a student research project conducted by Sylvia Floretta-Schiller, Barbar Berent, and Gabriela Salinas
#'in the Psychology Department at Dominican University.
#'
#'The project was inspired by the following paper:
#'
#'Robinson, T. N., Borzekowski, D. L. G., Matheson, D. M., & Kraemer, H. C. (2007).
#'Effects of Fast Food Branding on Young Children's Taste Preferences. \emph{Archives of Pediatrics and Adolescent Medicine, 161}, 792-797.
#'
#'@references
#'Cumming, G., & Calin-Jageman, R. (2017).
#'  \emph{Introduction to the New Statistics}. New York; Routledge.
"labels_flavor"
