\name{convert}
\alias{convert}
\title{Converts ISCO-88 to Common SES Codes}
\usage{
convert(ISCO, type = "EGP")
}
\arguments{
	\item{ISCO}{Vector of four digit ISCO-88 codes as int or char}
	\item{type}{The requested conversion type (see description)}
}

\description{
Converts ISCO 88 to common ses or social class codes. See \href{http://www.harryganzeboom.nl/isco88/index.htm}{Ganzeboom's website for official correspondence tables.}
}

\value{Options for type include EGP, ISEI, and SIOPS.}

\examples{
#Converts ISCO codes to EGP classes
convert(c(1000,9000), type = "EGP")
}
