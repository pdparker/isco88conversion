dominanceEGP <- function(x){
	if(!all(is.na(x))) {min(x, na.rm=TRUE)
	}else if(all(is.na(x))){return(NA)
	}else{x[which(!is.na(x))]}
}

