###--------------------------------------------------
### Options, Libraries, Convenience Functions
###--------------------------------------------------

###--------------------------------------------------
### Preliminaries
###--------------------------------------------------

## How many digits to round to in Tables and boot formulae?
table.digits <- 1

###------------------------------------------------------------
### Libraries
###------------------------------------------------------------

library(ascii)
library(MASS)
library(lattice)
library(dichromat)
library(scales)
library(ggplot2)
library(ggthemes)
library(boot)
library(mgcv)
library(grid)
library(survey)
library(ca)
library(stringr)
library(extrafont)

###--------------------------------------------------
### GGplot theme
####--------------------------------------------------

theme_set(theme_minimal())

cb.palette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00",
      "#CC79A7")
theme_set(theme_minimal())

## binary values in nice cb colors
tc <- cb.palette[c(2,6)]


###--------------------------------------------------
### Utility functions not in a package
###--------------------------------------------------

### RF, DK, etc
refusal.codes <- c("Don't know", "Don't Know", "Refused",
                   "Prefer not to say", "Prefer not to Say")

get.refusals <- function(x, rcodes=refusal.codes){
  o <- x %in% rcodes
  return(o)
}

###--------------------------------------------------
### End
###--------------------------------------------------
