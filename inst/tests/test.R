context("Dominance")
#Comparing Different Coding
expect_that(dominance(c(1,9),type = "EGP"),equals(1))
expect_that(dominance(c(56,79),type = "ISEI"),equals(79))
expect_that(dominance(c(56,79),type = "SIOPS"),equals(79))
#Check missing single value
expect_that(dominance(c(NA,9),type = "EGP"),equals(9))
expect_that(dominance(c(56,NA),type = "ISEI"),equals(56))
#Check what happens when both are NA
expect_that(dominance(c(NA,NA),type = "ISEI"),equals(NA))
#Check errors work
expect_error(dominance(c(56,NA, 32),type = "ISEI"))
expect_error(dominance(c('a','b','c'),type = "ISEI"))

context("Convert")
#Check correct conversion
expect_that(convert(c("1000","1317","9200"), type = 'EGP'),
			is_equivalent_to(c(1,2,9))
			)
expect_that(convert(c("1000","1317","9200"), type = 'ISEI'),
			is_equivalent_to(c(55,51,16))
			)
expect_that(convert(c("1000","1317","9200"), type = 'SIOPS'),
			is_equivalent_to(c(51,52,23))
			)
expect_that(convert("9200", type = 'JOB'),matches("AGRICULTURAL"))
#Check unemployment and self-employed work as expected
expect_that(convert(c("999","9") , type = 'EGP',unemployed = 999,selfEmployed = 9),
			is_equivalent_to(c(12,6))
			)

expect_warning(con1 <- convert(c("999","9") , type = 'ISEI',unemployed = 999,selfEmployed = 9))
expect_that(con1,is_equivalent_to(c(NA,NA)))

expect_warning(con2 <- convert(c("999","9") , type = 'SIOPS',unemployed = 999,selfEmployed = 9))
expect_that(con2,is_equivalent_to(c(NA,NA)))

context("is.isco")
expect_true(is.isco88(1300))
expect_false(is.isco88(900))

context("ANZSCO")
expect_that(anzscoToISCO(111399), equals(1110))
expect_that(anzscoToISCO(621912), equals(5220))
