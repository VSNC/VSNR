% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/asreml.batch.R
\name{asreml.batch}
\alias{asreml.batch}
\title{ASReml-R batch analysis}
\usage{
asreml.batch(data, factorN, traitN, FMod = NULL, RMod = NULL, EMod = NULL,
  mulT = NULL, mulN = NULL, mulR = NULL, corM = NULL, corMout = FALSE,
  pformula = NULL, pformula1 = NULL, pformula2 = NULL, pformula3 = NULL,
  pformula4 = NULL, maxit = NULL, ped = NULL, pedinv = NULL,
  ginverse = NULL)
}
\arguments{
\item{data}{The data in use.}

\item{factorN}{A vector with sites of all factors.}

\item{traitN}{A vector with sites of all traits.}

\item{FMod}{Fixed mode.}

\item{RMod}{Randomed variance structure.}

\item{EMod}{Error variance structure for multi-trait model.}

\item{mulT}{Value "T" or "TRUE" for multi-trait model, "F"(default).}

\item{mulN}{Number of trait for one model in multi-trait analysis,2(default).}

\item{mulR}{Value "T" or "TRUE" to count corr/error matrix, only works for bitrait, "F"(default).}

\item{corM}{Value "T" or "TRUE" for corr model, "F"(default).}

\item{corMout}{Value "T" or "TRUE" to output corr matrix, "F"(default).}

\item{pformula}{Formula for h2 or corr.}

\item{pformula1}{Formula for h2 or corr.}

\item{maxit}{Maximum number of iterations.}

\item{ped}{Value "T" or "TRUE" for animal model with pedigree, "F"(default).}

\item{pedinv}{A G-inverse matrix for pedigree from ASReml.Ainverse().}

\item{ginverse}{a named list with each component identifying a G-inverse matrix.}
}
\description{
This function carries out batch analysis for mult-trait with same model and also output heritability etc. in ASReml-R package.
}
\examples{
library(asreml)
library(vsnc)
data(fm)
head(fm)
# Single trait, no pedigree, batch analysis
asreml.batch(data=fm, factorN=1:5, traitN=6:13,
             FMod = y ~ Rep + Plot, RMod =~ Fam,
             pformula = h2 ~ 4*V1/(V1+V2))
# Two trait, no pedigree, batch analysis
asreml.batch(data=fm,factorN=1:5,traitN=c(10:12),
          FMod=cbind(y1,y2)~trait+trait:Rep,
          RMod=~us(trait):Fam,
          EMod=~units:us(trait),
          mulT=TRUE,mulN=2,mulR=TRUE,corMout=T,
          pformula=r.g ~ V2/sqrt(V1*V3),
          pformula1=h2.A ~ 4*V1/(V1+V5),
          pformula2=h2.B ~ 4*V3/(V3+V7))

# Single trait, pedigree, batch analysis
data("BTdata")
data("BTped")             
head(BTdata)
head(BTped)
ainv <- asreml.Ainverse(BTped)$ginv
asreml.batch(data=BTdata,factorN=c(3:5,7),traitN=c(1:2),
             FMod=y~1+sex,RMod=~ped(animal),
             ped=T,pedinv=ainv,ginverse=list(animal=ainv),
             pformula=h2 ~  V1/(V1+V2))
             
# Bivariate, pedigree, batch analysis 
asreml.batch(data=BTdata,factorN=c(3:5,7),traitN=c(1:2),
        FMod=cbind(y1,y2)~trait+trait:sex,RMod=~us(trait):ped(animal),
        EMod=~units:us(trait),mulT=TRUE,mulN=2,
        ped=T,pedinv=ainv,ginverse=list(animal=ainv),
        pformula = hy1 ~ V1/(V1+V5),
        pformula1 = hy2 ~ V3/(V3+V7),
        pformula2 = hgr ~ V2/sqrt((V1*V3)))
        
}
\references{
Yuanzhen Lin, Xiaoyang Chen. R & ASReml-R Statistical Analysis Tutorial. China Forestry Publishing House. 2014
}
