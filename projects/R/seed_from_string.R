seed_from_string <- function(seed) {
  if (is.numeric(seed)) return(set.seed(seed))
  
  # otherwise set from characters
  seed %>%
    openssl::md5() %>%       # turn into something with lots of numbers
    gsub("[a-z]", "", .) %>% # get rid of letters
    substr(1, 8) %>%         # select the first 8 numbers
    set.seed()
}