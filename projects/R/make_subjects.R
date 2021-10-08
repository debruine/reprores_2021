make_subjects <- function(subj_n = sample(300:400, 1),
                          cond_levels = c("A", "B"),
                          vers_levels = c("V1", "V2")) {
  faux::add_random(subj_id = subj_n) %>%
    faux::add_between(gender = c("female", "male", "nonbinary"),
                .prob = c(.3, .6, .1)) %>%
    faux::messy(prop = 0.05, "gender") %>%
    dplyr::mutate(age = 18 + rpois(nrow(.), 3)) %>%
    faux::messy(prop = 0.05, "age", replace = "missing") %>%
    faux::add_between(language = c("monolingual", "bilingual"),
                      .prob = c(.7, .3)) %>%
    faux::add_between(condition = cond_levels,
                      version = vers_levels)
}