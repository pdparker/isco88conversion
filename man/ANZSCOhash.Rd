\name{ANZSCOhash}
\docType{data}
\alias{ANZSCOhash}
\title{ANZSCO to ISCO-88 correspondance}

\description{Hash table with ANZSCO codes as Key and correspondance ISCO88 codes as Values}

\usage{ANZSCOhash}

\format{A hash table with 1015 Key:Value pairs}

\source{
ABS
}

\details{
Key: ANZSCO values

Values: ISCO 88 value
}

\keyword{datasets}

\examples{
#See what ANZSCO codes are avaliable
hash::keys(ANZSCOhash)
}
