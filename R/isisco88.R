is.isco88 <- function(x){
	require(hash)
	as.character(x) %in% keys(ISCOhash)
}

is.isco88 <- Vectorize(is.isco88)
