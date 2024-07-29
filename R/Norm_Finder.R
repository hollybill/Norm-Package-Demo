#' Find norms
#'
#' @param x A numeric vector
#'
#' @return Dataframe of norms
#' @importFrom stats quantile
#' @export
#'
#' @examples
#' sampledata <- data.frame(replicate(10,sample(0:100,1000,rep=TRUE)))
#' x <- sampledata$X1
#' Norm_Finder(x)
Norm_Finder <- function(x) {
  as.data.frame(quantile(x, probs = c(.10,.25,.50,.75,.90,.95,.99), na.rm = TRUE))
}
