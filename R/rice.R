#' Effects of nitrogen fertiliser on yields of varieties of rice
#' 
#' The Rice dataset contains data from an experiment that studied 
#' the effect of three levels of nitrogen fertilizer on the yields 
#' of six varieties of rice. The experiment used a strip-plot design. 
#' This is a replicated row and column design. Each replicate had three
#' columns and six rows. Within each replicate, the nitrogen levels 
#' were randomized onto the columns, and the varieties were
#' randomized onto the rows.The response variable is the yield of rice.
#'  
#' @format 
#'  \describe{A data frame with 54 observations on the following six variables:
#'  \item{Rep}{a factor specifying the replicate to which each plot belonged.}
#'  \item{Row}{a factor specifying its row.}
#'  \item{Column}{a factor specifying its column.}
#'  \item{Variety}{a factor specifying the variety grown on each plot.}
#'  \item{Nitrogen}{a factor specifying the amount of nitrogen fertiliser that was applied.}
#'  \item{Yield}{a numerical vector recording the yields.}
#'  }
#'  
#' @source 
#'  Gomez, K.A. & Gomez, A.A. (1984) Statistical Procedures for Agricultural Research, page 110.
#'  
#' @examples 
#'  
"rice"