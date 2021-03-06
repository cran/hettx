% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helper_stat_calc.R
\name{SKS.pool.t}
\alias{SKS.pool.t}
\title{SKS.pool.t}
\usage{
SKS.pool.t(Y, Z, W)
}
\arguments{
\item{Y}{Observed outcome vector}

\item{Z}{Treatment assigment vector}

\item{W}{A a factor or categorical covariate.}
}
\description{
Subtract off group level treatment effect estimates and then look
at KS statistic on residuals.
}
\details{
Distinct from the interacted lm in that the control units are not
shifted and centered with respect to eachother.
}
\examples{
df <- make.randomized.dat( 1000, gamma.vec=c(1,1,1,2), beta.vec=c(-1,-1,1,0) )
df$W <- sample(c("A", "B", "C"), nrow(df), replace = TRUE)
SKS.pool.t(df$Yobs, df$Z, df$W)

}
