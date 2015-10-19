\name{ISCOhash}
\docType{data}
\alias{ISCOhash}
\title{Hash table with ISCO codes as Key and correspondance values as Values}

\usage{ISCOhash}

\format{A hash table with 533 Keys each with 5 values}

\source{
Hash table created from Appendix A from Ganzeboom & Treiman (1996). See \href{http://www.harryganzeboom.nl/isco88/index.htm}{Ganzeboom's website for official correspondence tables.}
}

\details{
Key: ISCO 88 values

Values: SIOPS, ISEI, EGP, Job description.

Given that datasets like PISA are very large as hash table is used rather than a data.frame to store correspondance tables. Depends on package hash (>= 2.2.6).
}

\references{
	\href{http://www.harryganzeboom.nl/isco08/..\%5CPdf\%5C1996-Ganzeboom-Treiman-ISEI88-(SSR).pdf}{Ganzeboom & Treiman (1996). Internationally Comparable Measures of Occupational Status for the 1988 International Standard Classification of Occupations. \emph{Social Science Research}, 25, 201-239}
	}

\keyword{datasets}

\examples{
#See what ISCO-88 codes are avaliable
keys(ISCOhash)
}
