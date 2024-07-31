library(devtools)

use_git()

(sampledata <- data.frame(replicate(10,sample(0:100,1000,rep=TRUE))))
(x <- sampledata$X1)

Norm_Finder <- function(x) {
  as.data.frame(quantile(x, probs = c(.10,.25,.50,.75,.90,.95,.99), na.rm = TRUE))
}


use_r("Norm_Finder")

load_all()

Norm_Finder(x)

exists("Norm_Finder", where = globalenv(), inherits = FALSE)

check()

use_mit_license()

document()

check()

install()
library(firstpackage)
use_testthat()

use_package("stats")

use_github()
13
