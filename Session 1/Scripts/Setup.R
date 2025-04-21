for(packageName in c("devtools",            # R packages needed here
                     "here",
                     "magrittr",
                     "NlinTS",
                     "nonlinearAnalysis",
                     "rEDM",
                     "Rssa",
                     "tidyverse")) {
  if(!is.element(packageName,               # If package is NOT installed...
                 installed.packages()[,1])) {
    install.packages(packageName)           #  ...then install it.
  }
  library(packageName,                      # Add package to environment
          character.only=TRUE,
          quietly=TRUE,
          verbose=FALSE)
}

options(show.signif.stars = FALSE)          # Don't stargaze
options(digits = 3) 