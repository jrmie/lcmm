% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/VarExpl.hlme.R
\name{VarExpl}
\alias{VarExpl}
\alias{VarExpl.hlme}
\alias{VarExpl.lcmm}
\alias{VarExpl.Jointlcmm}
\alias{VarExpl.multlcmm}
\title{Percentage of variance explained by the (latent class) linear mixed model
regression}
\usage{
VarExpl(x, values)
}
\arguments{
\item{x}{an object of class \code{hlme}, \code{lcmm}, \code{multlcmm} or
\code{Jointlcmm}}

\item{values}{a data frame with a unique row that contains the values of the
variables in random and the time variable in the correlation process from
which the percentage of variance should be calculated.}
}
\value{
For \code{hlme}, \code{lcmm}, and \code{Jointlcmm} objects, the
function returns a matrix with 1 row and ng (ie the number of latent
classes) columns containing (the class specific) percentages of variance
explained by the linear mixed regression.

For \code{multlcmm} objects, the function returns a matrix containing (the
class specific) percentages of variance explained by the linear mixed
regression for each outcome. The resulting matrix is composed of as many
rows as outcomes and as many columns as latent classes.
}
\description{
The function provides the percentage of variance explained by the (latent
class) linear mixed regression in a model estimated with \code{hlme},
\code{lcmm}, \code{multlcmm} or \code{Jointlcmm}.
}
\examples{

\dontrun{
m1 <- multlcmm(Ydep1+Ydep2~1+Time*X2+contrast(X2),random=~1+Time,
subject="ID",randomY=TRUE,link=c("4-manual-splines","3-manual-splines"),
intnodes=c(8,12,25),data=data_lcmm, 
B=c(-1.071, -0.192,  0.106, -0.005, -0.193,  1.012,  0.870,  0.881,
  0.000,  0.000, -7.520,  1.401,  1.607 , 1.908,  1.431,  1.082,
 -7.528,  1.135 , 1.454 , 2.328, 1.052))

# variation percentages explained by linear mixed regression
VarExpl(m1,data.frame(Time=0))
}

}
\seealso{
\code{\link{hlme}}, \code{\link{lcmm}}, \code{\link{multlcmm}},
\code{\link{Jointlcmm}}
}
\author{
Cecile Proust-Lima, Viviane Philipps
}
