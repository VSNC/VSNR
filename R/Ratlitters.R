#' Effect of different diets on weight gain in rats
#' 
#' The Ratlitters dataset contains data from an experiment to study the effect of different diets on the gain in weight of rats, using a randomized-block design. There were eight litters, each of five rats. Rats from the same litter can reasonably be assumed to be more similar than rats from different litters. So the experiment was set up with litters acting as blocks i.e. the five diets (A-E) were allocated at random to the five rats within each litter.
#' @format 
#' \describe{A data frame with 40 observations on the following four variables:
#' 
#' \item{Litter}{a factor specifying the litter to which each rat belonged.}
#' \item{Rat}{a factor numbering the rats within each litter.}
#' \item{Diet}{a factor specifying which of five different diets was fed to each rat.}
#' \item{Gain}{a numerical vector recording the gain in weight of each rat.}
#' }
#' @source 
#' John, J.A. & Quenouille, M.H. (1977) Experiments Design and Analysis, page 32.
"Ratlitters"