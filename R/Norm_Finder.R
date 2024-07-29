Norm_Finder <- function(x) {
  as.data.frame(quantile(x, probs = c(.10,.25,.50,.75,.90,.95,.99), na.rm = TRUE))
}
