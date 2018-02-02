# isco88conversion Package

I am often faced with a need to translate ISCO codes into another format. As yet there is no complete package for doing so in R. Here is my attempt to fill that void. In undertaking this package I have noted several concerns:

1. Ganzeboom's paper and SPSS syntax do not distinguish between EGP codes 3 and 4. 
2. There are occasional miscodes in the Ganzeboom SPSS syntax that means it cannot be directly used as a basis. To address this I instead scrapped from Appendix A in Ganzeboom & Treiman (1996):

```
#scape data directly from Ganzeboom's website. This is the Appendix A from his paper
library(rvest)
url <- html('http://www.harryganzeboom.nl/ismf/scaleapp.htm')
#extract content
text <- url %>%
	html_node("pre") %>%
	html_text()
#Lots for regular expressions to whip into shape
text <- strsplit(text, "\n+")
text <- text[[1]][-c(1:2)]
text<- grep("^.?[0-9].+",text, value = TRUE)
text[305] <- gsub("^[[:blank:]]","", text[305])
text <- gsub("\r", "", text)
text2 <- gsub("(^[0-9]{1,2})[[:blank:]]+([0-9]{1,2})[[:blank:]]+([0-9]{1,2})[[:blank:]]+([0-9]{4}).|\\s+([\\[\\]\\,A-Z]+.*$)",
	 "\\1\t\\2\t\\3\t\\4\t\\5", text)
#Put into a data.frame
text3 <-do.call(rbind.data.frame,strsplit(text2, "\t"))
#Add names
names(text3) <- c("SIOPS","ISEI","EGP","ISCO","JobDescription")
text3[,1:3] <- apply(text3[,1:3], 2, function(x) as.numeric(as.character(x)))
#Clean description of jobs
text3$JobDescription <- gsub("^[[:blank:]]+", "", text3$JobDescription)
```

##Basics

The package uses ISCO-88 as base code, with correspondence hash tables provided to get from other common codes to this base code. The main envisioned workflow is:

1. Translate codes in ISCO-88 if needed
2. Use the base ISCO cod to get EGP, ISEI, or SIOPS codes.

For EGP it is important to note that no distinction is made between classes 3 and 4 with code 3 used as a catch all for "Routine non-manual" jobs. Likewise, ISCO-88 contains no codes for self-employed or unemployed individuals. The convert function provides an argument to provide user to provide user-defined values for self-employed and unemployed. This will return 6 (for self-employed) and 12 (for unemployed). When ISEI or SIOPS is requested, user defined values are ignored and NA is returned.

##Sources

+ ISCO-88 correspondence table from [Ganzeboom's code SPSS code](http://www.harryganzeboom.nl/isco88/index.htm)

+ ANZSCO based on [ABS correspondance tables](http://www.abs.gov.au/AUSSTATS/abs@.nsf/DetailsPage/1220.0First\%20Edition,\%20Revision\%201?OpenDocument)

+ Correspondence table from ISCO-08 to ISCO-88

##Instalation

```
library(devtools)
install_git("https://github.com/pdparker/isco88conversion")
```
##To do

+ Full documentation and code cleaning
+ Adding further conversion for ABS codes including the ASEIE and ANU occupational prestige codes
+ Provide correspondence from ISCO-68
+ Provide translation from ISCO-08 and ISCO-68 to ses and social class codes
+ Consider adding other translators
+ Provide translations for more crude recording of occupations
