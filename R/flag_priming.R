#'Two Independent Groups - Flag Priming and Conservatism
#'
#'An example of data from a study with a two independent groups design used in Chapter 7 of the book
#'\emph{Introduction to the New Statistics}.
#'
#'To what extent can subtle cues influence political attitudes?
#'In this study, participants were asked to look at photos to estimate the time of day they were taken.
#'For some participants, 2 of the 4 photos were of the U.S.A. flag ("flag prime").
#'For the rest, all 4 photos were of neutral objects ("no prime").
#'Next, for what seemed like an unrelated study, participants completed an 8-item questionnaire about political beliefs
#'(each rated on a scale from 1-7, where higher numbers represent more conservative attitudes).
#'The research question is: to what extent does flag exposure alter political attitudes?
#'
#'The study was conducted at several sites, but only data for one site (Ithaca) is included here.
#'
#'@format A data frame with 90 rows and 5 variables:
#'\describe{
#'  \item{sessionid}{Respondent identifier}
#'  \item{location}{Lab that ran the study - \emph{ithaca} for all participants in this dataset}
#'  \item{filter}{\emph{exclude} for for participants who didn't pay attention or who failed some other qualification to be in the study, \emph{include} for participants who passed all checks and should be analyzed}
#'  \item{flag_group}{\emph{flag prime} for those exposed to the USA flag, \emph{no prime} for those exposed to control images}
#'  \item{flag_dv}{Average of an 8-item scale of political conservatism (each item rated 1 - 7): low scores indicate liberal attitudes, high scores indicate conservative attitudes}
#'}
#'
#'@source
#'This is data is available online at \url{https://osf.io/wx7ck} and is from:
#'
#'Klein, R. A., Ratliff, K. A., Vianello, M., Adams ., R. B., Bahnik, S., Bernstein, M. J., ... & Nosek, B. A. (2014).
#'Investigating Variation in Replicability. \emph{Social Psychology, 45}, 142-152. \url{http://doi.org/10.1027/1864-9335/a000178}
#'
#'The original study to investigate this effect is:
#'
#'Carter, T. J., Ferguson, M. J., & Hassin, R. R. (2011). A Single Exposure to the American Flag Shifts Support Toward Republicanism up to 8 Months Later.
#'\emph{Psychological Science, 22}, 1011-1018. \url{http://doi.org/10.1177/0956797611414726}
#'
#'@references
#'Cumming, G., & Calin-Jageman, R. (2017).
#'  \emph{Introduction to the New Statistics}. New York; Routledge.
"flag_priming"



