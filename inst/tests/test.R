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
