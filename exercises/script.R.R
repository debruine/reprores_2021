library(tidyverse)

simfunc <- function(n) {

}

analysis <- function(data) {

}


p <- replicate(100, analysis())

results_table <- tibble(
  n = seq(100, 1000, by = 100),
  power = seq(.2, .9, length.out = 10)
)

save(results_table, file = "results_table.RData")
