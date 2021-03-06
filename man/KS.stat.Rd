% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helper_stat_calc.R
\name{KS.stat}
\alias{KS.stat}
\title{KS.stat}
\usage{
KS.stat(Y, Z, tau, alternative)
}
\arguments{
\item{Y}{Observed outcome vector}

\item{Z}{Treatment assigment vector}

\item{tau}{Value of treatment effect for shifting Y1. Default is NULL (Y1 not shifted).}

\item{alternative}{Direction of test ("two.sided", "less", "greater")}
}
\value{
The value of the test.
}
\description{
Calculate classic (not shifted) KS statistic; code is a modified version of R's ks.test().
}
\details{
If tau passed, Y1 will be shifted by tau.
}
\examples{
df <- make.randomized.dat( 1000, gamma.vec=c(1,1,1,2), beta.vec=c(-1,-1,1,0) )
KS.stat(df$Yobs, df$Z)

}
\seealso{
detect_idiosyncratic
}
