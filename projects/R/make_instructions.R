make_instructions <- function(template = "instructions.md",
                              factors = c(language = c("monolingual", "bilingual"),
                                          condition = c("A", "B"),
                                          version = c("V1", "V2")),
                              topics = c("stress", "extroversion", "disgust"),
                              alphas = c(.005, .01, .05),
                              powers = c(80, 85, 90),
                              student_id,
                              quest_n
) {
  two_factors <- sample(names(factors), 2)
  iv <- two_factors[[1]]
  subset <- two_factors[[2]]
  level <- factors[[subset]] %>% sample(1)
  topic <- sample(topics, 1)
  alpha <- sample(alphas, 1)
  power <- sample(powers, 1)

  readLines(template) %>%
    paste(collapse = "\n") %>%
    glue::glue()
}
