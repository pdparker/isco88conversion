#USEAGE: convert(c("9321","9322","9330"), type = 'EGP')
#ISCO: int or char -> int
#fromFormate: ISCO88. Can be other formats but will return first match rather than best match
#to Format: can be EGP, SIOPS, ISEI. Will add ABS criteria soon
#translator is a data frame consiting of conversion table
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

convert <- function(ISCO, type = "EGP", selfEmployed = NULL, unemployed = NULL){
	require(hash)

	if (type == "EGP" & length(selfEmployed) !=0 & ISCO %in% selfEmployed){
		return(6)
	}
	else if (type == "EGP" & length(unemployed) !=0 & ISCO %in% unemployed){
		return(12)
	}

	else if(ISCO %in% keys(ISCOhash) == FALSE){
		warning("One or more inputs is not a valid ISCO-88 code")
		return(NA)
	}

	else{f1 <- function(type){
		switch(type,
			   EGP = ISCOhash[[as.character(ISCO)]]$EGP,
			   ISEI = ISCOhash[[as.character(ISCO)]]$ISEI,
			   SIOPS = ISCOhash[[as.character(ISCO)]]$SIOPS,
			   JOB = ISCOhash[[as.character(ISCO)]]$JobDescription
		)
	}
	tmp <- unlist(f1(type))
	if(length(tmp)==0) {return(NA)
		}else if(type != 'JOB'){return(as.numeric(tmp))
		}else {return(tmp)
		}
	}
}
#Vectorize the function to m ake it faster
convert <- Vectorize(convert)
