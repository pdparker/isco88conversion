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

convert <- function(x, type = "EGP"){
	require(hash)
	if(x %in% keys(EGPhash) == FALSE){
		warning("One or more inputs is not a valid ISCO-88 code")
	}

	f1 <- function(type){
		switch(type,
			   EGP = EGPhash[[as.character(x)]],
			   ISEI = ISEIhash[[as.character(x)]],
			   SIOPS = SIOPShash[[as.character(x)]]
		)
	}
	tmp <- unlist(f1(type))
	if(length(tmp)==0) {return(NA)
	}else{return(tmp)}
}

convert <- Vectorize(convert)
