#'Cohen's d standardized mean change effect size for repeated measures designs
#'
#'Computes Cohen's d effect size for repeated measures designs (paired samples),
#'using the standardizer recommended by Cumming (2012).  In other words, the 
#'standardizer is the average of the pre and post-treatment standard deviations,
#'rather than the standard deviation of the change scores.  An approximate 
#'noncentral-t confidence interval is computed using the method proposed by 
#'Algina & Keselman (2003), Equations 7 to 9.  The effect size estimate can be 
#'corrected for sample sample bias (see Cumming, 2012, p.294) by setting the 
#'\emph{Unbiased} argument to \emph{TRUE}.
#'
#'@param x Numeric vector of observations at time 1 (e.g., pre-test)
#'@param y Numeric vector of observations at time 2 (e.g., post-test)
#'@param ci Confidence level.  Default is 95 (for a 95 percent CI).
#'@param unbiased Logical. If TRUE, the estimated effect size is corrected for 
#'  small-sample bias.  Default is FALSE.
#'  
#'@return A numeric vector of length three comprising the estimated effect size 
#'  (est), lower limit of the confidence interval (ll), and upper limit of the 
#'  confidence interval (ul).
#'  
#'@import stats
#'@export
#'
#' @examples
#' \dontrun{
#'    cohensd_rm(x = thomason1$pre, y = thomason1$post)
#' }
#'@references Algina, J. A., & Keselman, H. J. (2003). Approximate Confidence
#'Intervals for Effect Sizes. \emph{Educational and Psychological Measurement,
#'63}, 537-553.
#'
#'Cumming, G. (2012). \emph{Understanding The New Statistics:
#'Effect Sizes, Confidence Intervals, and Meta-Analysis}. Routledge; New York.
cohensd_rm <- function(x, y, ci = 95, unbiased = FALSE){
  # Check for unequal Ns
  if(length(x)!=length(y)) 
    stop("x and y do not have the same number of observations")
  # Omit any pairs with missing values
  z <- rbind(x, y)
  z <- na.omit(z)
  x <- z[1, ]
  y <- z[2, ]
  # Compute d 
  std <- sqrt((var(x) + var(y)) / 2)    # standardizer is the average SD of pre and post scores
  d <- (mean(x) - mean(y)) / std        # biased point estimate
  a <- stats::t.test(x, y, paired = TRUE, conf.level = ci/100)  # compute paired t-test
  ncp <- a$statistic                    # paired t-statistic is the noncentrality parameter
  b <- a$parameter                      # extract df
  n <- length(x)                        # sample size
  nct_limits <- MBESS::conf.limits.nct(t.value = ncp, df = b, conf.level = ci/100) # compute noncentrality limits
  mult <- sqrt(2*(var(x) + var(y) - 2*cov(x, y)) / (n*(var(x) + var(y))))  # multiplication factor
  ll <- nct_limits$Lower.Limit*mult     # lower limit of CI
  ul <- nct_limits$Upper.Limit*mult     # upper limit of CI
  if(unbiased == TRUE)                  # Sample sample correction to estimate of d that corrects for bias
    d <- d * gamma((b)/2)/(sqrt((b)/2) * gamma(((b) - 1)/2))
  # Return the results
  out <- c(d, ll, ul)
  names(out) <- c("est", "ll", "ul")
  out
}
