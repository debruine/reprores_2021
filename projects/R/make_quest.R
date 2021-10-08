make_quest <- function(subjects,
                       quest_n = 5:15,
                       sep = c("_", "", "-", " "),
                       lang_effect = c(-0.5, 0, 0.5),
                       cond_effect = c(-0.5, 0, 0.5),
                       vers_effect = c(-0.5, 0, 0.5),
                       likert_prob = c(.05, .1, .2, .3, .2, .1, .05)
) {
  # sample values
  quest_n <- sample(quest_n, 1)
  sep <- sample(sep, 1)
  lang_effect <- sample(lang_effect, 1)
  cond_effect <- sample(cond_effect, 1)
  vers_effect <- sample(vers_effect, 1)
  
  subjects %>%
    faux::add_random(quest_id = quest_n) %>%
    faux::add_between("quest_id", reversed = c("F", "R")) %>%
    faux::add_ranef("subj_id", 
                    s0i = 2, 
                    s_lang = 1,
                    s_cond = 1,
                    s_vers = 1, 
                    .cors = 0.2) %>%
    faux::add_ranef("quest_id", q0i = 1) %>%
    faux::add_ranef(sigma = 3) %>%
    faux::add_contrast("language", add_cols = T, colnames = "lang") %>%
    faux::add_contrast("condition", add_cols = T, colnames = "cond") %>%
    faux::add_contrast("version", add_cols = T, colnames = "vers") %>%
    dplyr::mutate(dv = s0i + q0i + sigma +
             (s_lang + lang_effect) * lang + 
             (s_cond + cond_effect) * cond + 
             (s_vers + vers_effect) * vers,
           dv = norm2likert(dv, prob = likert_prob),
           dv = ifelse(reversed == "R", abs(dv - 8), dv)
    ) %>%
    dplyr::select(subj_id, quest_id, reversed, dv) %>%
    tidyr::unite(quest_name, sample(2:3), sep = sep) %>%
    faux::messy(prop = .005, "dv") %>%
    tidyr::pivot_wider(names_from = quest_name, values_from = dv) %>%
    dplyr::slice_sample(prop = .95)
}
