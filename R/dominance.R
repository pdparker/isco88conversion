dominance <- function(x, type){
	if(length(x)!=2){stop("Function take input vector of legth 2")}
	if(!all(is.numeric(x))&!all(is.na(x))){stop("Function take numeric vector")}

	switch (type,
		EGP = dominanceEGP(x),
		ISEI = dominancePRESTIGE(x),
		SIOPS = dominancePRESTIGE(x)
	)
}

