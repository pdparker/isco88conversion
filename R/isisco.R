is.isco88 <- function(x){
	as.character(x) %in% keys(EGPhash)
}

is.isco88 <- Vectorize(is.isco88)
