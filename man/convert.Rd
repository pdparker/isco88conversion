\name{convert}
\alias{convert}
\title{Converts ISCO-88 to Common SES Codes}
\usage{
convert(ISCO, type = "EGP", selfEmployed = NULL, unemployed = NULL)
}
\arguments{
	\item{ISCO}{Vector of four digit ISCO-88 codes as int or char}
	\item{type}{The requested conversion type (see details)}
	\item{selfEmployed}{The code that is used for self-employed individuals (see details)}
	\item{unemployed}{The code that is used for unemployed individuals (see details)}
}

\description{
Converts ISCO 88 to common ses or social class codes. See \href{http://www.harryganzeboom.nl/isco88/index.htm}{Ganzeboom's website for official correspondence tables.}
}

\details{
Types include EGP, ISEI, and SIOPS. We strictly use Appendix A from Ganzeboom & Treiman (1996) for conversions. This means no distinction is made between Routine non-manual employees higher grade or lower grade. Both are coded as 3.

ISCO-88 does not contain codes for self-employed or unemployed individuals. Thus user input is required to specify the codes used for each (if any). Self-employed and unemployed codes will be translated to EGP codes of 6 and 12 respectively. They will be coded as NA for ISEI or SIOPS.
}

\references{
	\href{http://www.harryganzeboom.nl/isco08/..\%5CPdf\%5C1996-Ganzeboom-Treiman-ISEI88-(SSR).pdf}{Ganzeboom & Treiman (1996). Internationally Comparable Measures of Occupational Status for the 1988 International Standard Classification of Occupations. \emph{Social Science Research}, 25, 201-239}
	}

\value{Options for type include EGP, ISEI, and SIOPS.}

\examples{
#Converts ISCO codes to EGP classes
convert(c(1000,9000), type = "EGP")
}
