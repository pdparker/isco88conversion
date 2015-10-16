#USEAGE: anzscoToISCO(c(""899916", "899917", "899918"))
#x: int or char -> int
#fromFormate: ANZSCO
#to Format: ISCO
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

anzscoToISCO <- function(x){
	require(hash)
	if(x %in% keys(ANZSCOhash) == FALSE){
		warning("One or more inputs is not a valid ANZSCO code")
	}

	tmp <- unlist(ANZSCOhash[[as.character(x)]])
	if(length(tmp)==0) {return(NA)
	}else{return(tmp)}
}

anzscoToISCO <- Vectorize(anzscoToISCO)
