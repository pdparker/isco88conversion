\name{ANZSCO}
\alias{ANZSCO}
\title{Convert ANZSCO to ISCO-88}
\usage{
anzscoToISCO(x)
}
\arguments{
	\item{x}{a vector of type int or type char}
}
\value{Matching ISCO-88 code}

\description{
Converts 6-digit ANZSCO to ISCO-88 code. See \href{http://www.abs.gov.au/AUSSTATS/abs@.nsf/DetailsPage/1220.0First\%20Edition,\%20Revision\%201?OpenDocument}{ABS website for offical correspondence table}
}

\examples{
#Convert from ANZSCO to ISCO-88
tmp <- anzscoToISCO(c("899916", "899917", "899918"))
tmp
#Convert from ANZSCO to EGP via ISCO-88
convert(anzscoToISCO(c("899916", "899917", "899918")), type = "EGP")}
