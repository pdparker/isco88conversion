\name{is.isco88}
\alias{is.isco88}
\title{Check if Input is a Valid ISCO-88 Code}
\usage{
is.isco88(x)
}
\arguments{
	\item{x}{Vector of int or char}
}

\description{
Checks if input is a valid ISCO code covered in \href{http://www.harryganzeboom.nl/isco88/index.htm}{Ganzeboom's correspondence tables.}
}

\value{Returns logical}

\examples{
#Check if input is a valid ISCO-88 code
is.isco88(c(1000,9000))
}
