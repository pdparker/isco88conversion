\name{isco08to88}
\alias{isco08to88}
\title{Converts ISCO-08 to ISCO-88 codes.}

\description{Converts ISCO-08 to ISCO-88 codes based on correspondance tables from the ABS.}

\usage{isco08to88(x)}

\arguments{
\item{x}{A vector of ISCO-08 codes}
}

\source{ABS}

\details{
Depends on package hash (>= 2.2.6).
}

\examples{
#See what ISCO-88 codes are avaliable
isco08to88(7413)
}
