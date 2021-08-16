#' Tidy up a messy data
#'
#' @Description 
#' 
#' Tidying simulation results is not just a fast process; it's dependent on an 
#' assessment about the types of values a data scientist expects from a neat evaluation.
#' The terminology "tidy data" provides a sophisticated data modification 
#' and processing platform. Produces a tibble that highlights the summary statistics of the model. 
#' It comprises coefficients and p-values between each term in a regression, 
#' data linear elastic grouping algorithms, and statistics per-test in functions.
#' It is possible to lose part of the information that is sought in the original item, 
#' or to keep more than it is required.
#'
#' @usage 
#' 
#' broom::tidy
#' 
#' tidy(x, confint, ...)
#'
#' @argument
#' 
#' @param x tidy may be computed for a virtual element
#' 
#' @param confint confidence level
#' 
#' @param ... more justifications for tidy
#'
#' @examples 
#'
#' #Compute a set of data for each group
#' 
#'person_df <- tibble(
#'    states = c("Oregon", "Washington", "California", "Washington", "California", "Oregon", "California", "Oregon", "Washington", "Washington", "Oregon"),
#'    year = c(2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010),
#'    housing = c(782578.25, 202450.29, 352629.20, 2042649.20, 24685.20, 1034.30, 2016285.29, 209425.20, 207854.59, 424501.49, 245580.49),
#'    salary =  c(2452.24, 2745.48, 1855.24, 2757.99, 9718.74, 1987.58, 9784.75, 8174.89, 3578.17, 5871.98, 7589.71)  
#'     )
#'
#' # Take a logarithmic fit on a person dataset as an experiment.
#'
#' person_df %>%
#'  lm((housing ~ salary + year), data = .)
#'
#' # Now compare it using tidy(x). By naming your data, making this to be x.
#' # It organizes useful outputs in order to read easily. This is one way to perform a hypothesis test.
#'
#' library(broom)
#'
#' person <- person_df %>%
#'  lm((housing ~ salary + year), data = .)
#'  
#' tidy(person)
#' 
#'----------------------------------
#'
#' # Another efficient way to tidy your data.
#'
#' person_df %>%
#'  lm((housing ~ salary + year), data = .) %>%
#'  broom::tidy()
#'
#'-------------------------------------
#'
#' # Use confidence interval to determin levels
#' 
#' person2 <- function(n) {
#'   person_df %>%
#'     lm(housing ~ salary, data = .) %>%
#'     broom::tidy(conf.int = TRUE)
#'
