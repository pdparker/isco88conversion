#USEAGE: convert(c("9321","9322","9330"), type = 'EGP')
#x: int or char -> int
#fromFormate: ISCO88. Can be other formats but will return first match rather than best match
#to Format: can be EGP, SIOPS, ISEI. Will add ABS criteria soon
#translator is a data frame consiting of conversion table
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

convert <- function(x, type = "EGP", selfEmployed = NULL, unemployed = NULL){
	require(hash)

	if (type == "EGP" & length(selfEmployed) !=0 & x %in% selfEmployed){
		return(6)
	}
	else if (type == "EGP" & length(unemployed) !=0 & x %in% unemployed){
		return(12)
	}

	else if(x %in% keys(ISCOhash) == FALSE){
		warning("One or more inputs is not a valid ISCO-88 code")
		return(NA)
	}

	else{f1 <- function(type){
		switch(type,
			   EGP = ISCOhash[[as.character(x)]]$EGP,
			   ISEI = ISCOhash[[as.character(x)]]$ISEI,
			   SIOPS = ISCOhash[[as.character(x)]]$SIOPS,
			   JOB = ISCOhash[[as.character(x)]]$JobDescription
		)
	}
	tmp <- unlist(f1(type))
	if(length(tmp)==0) {return(NA)
	}else{return(as.numeric(tmp))}
	}
}
#Vectorize the function to m ake it faster
convert <- Vectorize(convert)
