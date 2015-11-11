dominancePRESTIGE <- function(x){
	if(!all(is.na(x))) {max(x, na.rm=TRUE)
	}else if(all(is.na(x))){return(NA)
	}else{x[which(!is.na(x))]}
}

