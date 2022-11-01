#' A zplot_Function
#'
#' This function allows you find the z value and shows the p-value with a chart using the tigerstats package function (pnormGC).
#' @param x,mean,sd,tail input the random variable x, its mean , sd and the tail probability of interest
#' @keywords zplot
#' @import tigerstats
#' @importFrom tigerstats pnormGC
#' @export
#' @examples
#' zplot_function(x,mean, sd, tail)
zplot_function <- function(x , mean, sd, tail){
  # install.packages("tigerstats")
  library(tigerstats)
  z =  (x- mean)/sd
  cat("The calculated z value is ", z)
  if (tail == "left"){
    pnormGC(z,graph = TRUE, region = 'below')
  }

  if (tail == 'right'){
    pnormGC(z,graph = TRUE, region = 'above')
  }

}

