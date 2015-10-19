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

isco08to88 <- function(x){
	ISCO0888[[as.character(x)]]
}
#Vectorize
isco08to88 <- Vectorize(isco08to88)
