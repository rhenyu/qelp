#' Create a Histogram
#'
#' @Discription
#'
#' By splitting the x axis into bins and measure the observations in each bin, observe how a long cohesive variable's distribution looks.
#' This geom has two orientations because it handles each axis separately.
#' An integration of the supplied mappings and the sorts of spatial measurements in use may often be used to determine the direction.
#' By default, ggplot2 will try to figure out the direction the component should include.
#' In such instance, the orientation can be defined explicitly using the orientation parameter, which takes one of two values: "x" or "y."
#' The value specifies which axis the geom should follow, with "x" being the default.
#' 
#' @Usage
#'
#' ggplot(data, mapping = aes(x = value , y = value)) +
#'   geom_histogram(
#'   stat, 
#'   position, 
#'   binwidth, 
#'   bins, 
#'   ...)
#'
#' @Arguments
#'  
#' @param stat Toggle this option to alter the standard link between geoms.
#' 
#' @param position Change of placement as a string or as the result of a dispatch to a positioning alteration function.
#' 
#' @param binwidth The default setting is to utilize the number of bins in bins to cover the data range.
#'    The bins' width is possible to specify dimension as an arithmetic number or as a function that estimates widths from unoptimized x.
#'    The initial x values in the data, before any scale adjustment, are referred to as "unscaled x." 
#'    Must also alter this value, experimenting with different widths to discover the best method to display the data.
#'
#' @param bins The quantity of bins. Binwidth takes precedence. The default value is 30.
#'   
#' @param ... Functions are provided additional parameters. It isn't in use at the moment.
#'
#' @examples
#' 
#'
person_df <- tibble(
    states = c("Oregon", "Washington", "California", "Washington", "California", "Oregon", "California", "Oregon", "Washington", "Washington", "Oregon"),
    year = c(2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010),
    housing = c(82578.25, 202450.29, 352629.20, 42649.20, 24685.20, 1034.30, 16285.29, 9425.20, 7854.59, 24501.49, 45580.49),
    salary =  c(2452.24, 2745.48, 1855.24, 2757.99, 9718.74, 1987.58, 9784.75, 8174.89, 3578.17, 5871.98, 7589.71)  
     )
#' # To switch the orientation, map values to y.
#' 
#' ggplot(data = person_df, aes(x = housing)) +
#'  geom_histogram()
#' 
#'-------------------------------------- 
#'    
#' # The bins parameter can be used to change the number of bins.
#' ggplot2 comes with a default of 30 bins. Here we have histogram with 50 bins in the example below.
#' 
#' ggplot(data = person_df, aes(x = housing)) +
#'   geom_histogram(bins = 50)
#'   
#'---------------------------------------
#'   
#' # It's helpful to evaluate bandwidth polygons than it is to layer histograms.
#'   
#' ggplot(data = person_df, aes(x = housing)) +
#'  geom_histogram(binwidth = 10000) 
#' 
#'---------------------------------------   
#'  
#' # Change this ability to select the usual geom correlation.
#' 
#' ggplot(data = person_df, aes(x = housing)) +
#'   geom_histogram(stat = "bin") 
#' 
#'-------------------------------------- 
#' 
#' # Using the position to stack a string or as the result of a dispatch to a positioning alteration function, the position is changed.
#' 
#' ggplot(data = person_df, aes(x = housing)) +
#'   geom_histogram(position = "stack")
#'
