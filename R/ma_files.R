#'Meta-Analysis Example - Anchor Estimate
#'
#'An example dataset used in Chapter 9 of the book \emph{Introduction to the New
#'Statistics}.
#'
#'To what extent does the wording of a question influence one's judgement?  This
#'data investigates a specific type of wording influence: a numerical anchor. 
#'Participants were asked to estimate three different quantities (number of
#'babies born in the U.S. each day; population of Chicago; height of Mounter
#'Everest).  For each question, though, participants were either given a low or
#'high numerical anchor.  For example, they were told either that
#'the number of babies born in the U.S. was more than 200,000 (low anchor) or
#'less than 5,000,000 (high anchor).  The question is: to what extent does
#'having a low or high anchor in mind influence the estimate made?
#'
#'This dataset provides summaries for  30 of the 36 different labs that tried to
#'replicate this classic effect.  This is the data for the estimated number of
#'babies born/day in the U.S.
#'
#'@format A data frame with 30 rows and 9 variables: 
#'\describe{ 
#'  \item{location}{Name of the lab}
#'  \item{m_lowanchor}{Mean for those given the low anchor}
#'  \item{sd_lowanchor}{Standard deviation for those given the low anchor}
#'  \item{n_lowanchor}{Sample size for those given the low anchor}
#'  \item{m_highanchor}{Mean for those given the high anchor}
#'  \item{sd_highanchor}{Standard Deviation for those given the high anchor}
#'  \item{n_highanchor}{Sample size for those given the high anchor}
#'  \item{subset}{Factor indicating whether the study was conducted in the USA or not}
#'  \item{country}{Factor with 12 levels indicating the country where the study was conducted}
#'}
#'
#'@source
#'
#'This is data is available online at \url{https://osf.io/wx7ck} from this study:
#' Klein, R. A., Ratliff, K. A., Vianello, M., Adams, R. B., Bahník, Š., Bernstein, M. J.,
#' ... Nosek, B. A. (2014). Investigating Variation in Replicability. 
#' \emph{Social Psychology, 45}(3), 142–152. \url{http://doi.org/10.1027/1864-9335/a000178}
#'
#'The original study exploring this effect is:
#'Jacowitz, K. E., & Kahneman, D. (1995). Measures of Anchoring in Estimation Tasks. 
#'\emph{Personality and Social Psychology Bulletin, 21}(11), 1161–1166. 
#'\url{http://doi.org/10.1177/01461672952111004}
#'      
#'@references Cumming, G., & Calin-Jageman, R. (2017). \emph{Introduction to the
#'New Statistics}. New York; Routledge.
"ma_anchor_adjust"


#'Meta-Analysis Example - Replication of Flag Priming and Conservatism
#'
#'An example dataset used in Chapter 9 of the book \emph{Introduction to the New
#'Statistics}.
#'
#'To what extent can subtle cues influence political attitudes?  In this study, 
#'participants were asked to look at photos to estimate the time of day they 
#'were taken.  For some participants, 2 of the 4 photos were of the U.S.A. flag 
#'("flag prime").  For the rest, all 4 photos were of neutral objects ("no 
#'prime").
#'
#'Next, for what seemed like an unrelated study, participants completed a short 
#'8-item questionairre about political beliefs (each rated on a scale from 1-7, 
#'where higher numbers represent more conservative attitudes).
#'
#'The research question is: to what extent does flag exposure alter political 
#'attitudes?
#'
#'This is summary data from a number of different labs which attempted to
#'replicate this project.  The data is for U.S. labs only, as priming wih the
#'U.S. flag may not have the same effect in other countries:
#'
#'
#'@format A data frame with 25 rows and 7 variables: 
#'\describe{ 
#'  \item{location}{Name of the lab that ran the study}
#'  \item{m_flagprimed}{Mean conservatism score for flag-primed group. Score can range from 1 to 7,low scores indicate liberal attitudes, high scores indicate conservative attitudes.}
#'  \item{sd_lowanchor}{Standard deviation for those given the flag-primed group}
#'  \item{n_flagprimed}{Sample size for flag-primed group}
#'  \item{m_flagprimed}{Mean conservatism score for neutral group}
#'  \item{sd_lowanchor}{Standard deviation for those given the neutralgroup}
#'  \item{n_flagprimed}{Sample size for neutral group}
#'}
#'
#'@source
#'
#'This is data is available online at \url{https://osf.io/wx7ck} from this study:
#' Klein, R. A., Ratliff, K. A., Vianello, M., Adams, R. B., Bahník, Š., Bernstein, M. J.,
#' ... Nosek, B. A. (2014). Investigating Variation in Replicability. 
#' \emph{Social Psychology, 45}(3), 142–152. \url{http://doi.org/10.1027/1864-9335/a000178}
#'
#'The original study exploring this effect is:
#'Carter, T. J., Ferguson, M. J., & Hassin, R. R. (2011). A Single Exposure to the American 
#'Flag Shifts Support Toward Republicanism up to 8 Months Later. \emph{Psychological Science, 22}, 
#'1011–1018. \url{http://doi.org/10.1177/0956797611414726}
#'      
#'@references Cumming, G., & Calin-Jageman, R. (2017). \emph{Introduction to the
#'New Statistics}. New York; Routledge.
"ma_flag_priming"


#'Meta-Analysis Example - Replication of gender difference in implicit
#'attitudes about math
#'
#'An example dataset used in Chapter 9 of the book \emph{Introduction to the New
#'Statistics}.
#'
#'To what extent is gender related to implicit attitudes about bias?  To find
#'out, Nosek and colleagues as male and female students to complete an Implicit
#'Association Test (IAT) that measured how easily negative ideas could be
#'connected to art or to mathematics.  Higher scores indicate higher levels of
#'bias against mathematics.
#'
#'Note that all participants collected who had to be excluded due to high error rates 
#'or slow responses were excluded prior to creating this summary.  Data were omitted from 
#'these sites:uva vcu wisc wku wl wpi
#'
#'@format A data frame with 30 rows and 9 variables: 
#'\describe{ 
#'  \item{location}{Name of the lab}
#'  \item{m_male}{Mean IAT score for males}
#'  \item{sd_male}{Standard deviation for males on IAT}
#'  \item{n_male}{Sample size for males}
#'  \item{m_female}{Mean IAT score for females}
#'  \item{sd_female}{Standard deviation for females on IAT}
#'  \item{n_fenmale}{Sample size for females on IAT}
#'  \item{subset}{Factor indicating whether the study was conducted in the USA or not}
#'  \item{country}{Factor with 12 levels indicating the country where the study was conducted}
#'}
#'  
#'@source
#'This is data is available online at \url{https://osf.io/wx7ck} from this
#'study: Klein, R. A., Ratliff, K. A., Vianello, M., Adams, R. B., Bahník, Š.,
#'Bernstein, M. J., ... Nosek, B. A. (2014). Investigating Variation in
#'Replicability. \emph{Social Psychology, 45}(3), 142–152.
#'\url{http://doi.org/10.1027/1864-9335/a000178}
#'
#'The original study exploring this effect is: 
#'Nosek, B. a, Banaji, M. R., & Greenwald, A. G. (2002). 
#'Math = male, me = female, therefore math not = me. 
#'\emph{Journal of Personality and Social Psychology, 83}(1), 44–59. 
#'\url{http://doi.org/10.1037/0022-3514.83.1.44}
#'
#'@references Cumming, G., & Calin-Jageman, R. (2017). \emph{Introduction to the
#'  New Statistics}. New York; Routledge.
"ma_math_gender_iat"


#'Meta-Analysis Example - Power and Performance
#'
#'An example dataset used in Chapter 9 of the book \emph{Introduction to the New
#'Statistics}.
#'
#'To what extent can feeling powerful improve your performance? To find out,
#'Burgmer and Englich (2012) manipulated power by: (i) Asking participants to
#'recall either a nuetral memory or a time when they had power over others
#'(Experiment 1); (ii) Asking participants to complete a word search where the
#'words were either neutral or related to power (Experiment 2). Next,
#'participants were asked to perform a motor task: either golf (Experiment 1) or
#'darts (Experiment 2).  In both studies, participants primed to feel powerful
#'performaed substantially better than the control group.  This study was
#'conducted in Germany. Cusack et al. (2015) conducted a series of replications
#'in the U.S. to better understand how much power might affect performance.  In
#'addition to a close replication of Burgmer & Englich's first study (Experiment
#'1) they tried a number of variations.  Specifically, they tried different ways
#'of manipulating power (memory and word-search), different types of tasks
#'(golf, mirror tracing, and a cognitive word-production task),  different
#'sample types (online or undergrads), and different difficulties (normal or
#'hard).
#'
#'@format A data frame with 8 rows and 14 variables: 
#'\describe{ 
#'  \item{country}{Factor with 12 levels indicating the country where the study was conducted}
#'  \item{sample}{Factor indicating if the sample was drawn from an undergrad populaiton or from an online site}
#'  \item{difficulty}{Factor indicating if the task was of normal difficulty or high difficulty}
#'  \item{manipulation}{If power was manipulated by memory recall or by word search}
#'  \item{dvtype}{Factor indicating whether the DV was a motor task or a cognitive task}
#'  \item{dv}{Factor indicating whether the dependent variable was golf, darts, mirror-tracing, or word production}
#'  \item{study}{Factor indicating the name of the study}
#'  \item{m_control}{Mean score for the power group}
#'  \item{sd_control}{Standard deviation for the power group}
#'  \item{m_power}{Mean score for the control group}
#'  \item{sd_control}{Standard deviation for the control group}
#'  \item{cohensd}{Standardized effect size difference comparing control to power groups where positive numbers 
#'  indicate an advantage for the power group}
#'  \item{n_control}{Sample size for control group}
#'  \item{n_power}{Sample size for power group}
#'}
#'
#'@references Cumming, G., & Calin-Jageman, R. (2017). \emph{Introduction to the
#'  New Statistics}. New York; Routledge.
"ma_power_performance"
