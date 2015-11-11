\name{dominance}
\alias{dominance}
\title{Returns highest of mother and father codes}
\usage{
dominance(x, type)
}
\arguments{
	\item{x}{A int vector of length 2}
	\item{type}{Either 'EGP', 'ISEI', or 'SIOPS'}
}

\description{
Uses the dominance pespective to provide highest of mother and father ses or social class. This will return the MAX for prestige codes and MIN for EGP codes.
}

\value{Returns highest}

\examples{
#Returns 79
dominance(c(56,79), type = "ISEI")
# Returns 56
dominance(c(56,NA), type = "SIOPS")
# Returns NA
dominance(c(NA,NA), type = "SIOPS")
#Returns 1
dominance(c(1,2), type = "EGP")
}
