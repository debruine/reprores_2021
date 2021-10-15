Reproducible Report for 2682197
=========================================

Your questionnaire measures extroversion. Your research question is to determine if the extroversion score differs by condition for the subset of the sample where language is bilingual. In other words, if you only analyse the participants for whom language is bilingual, what is the main effect of condition on their extroversion score?

There are 4 data files for the subjects. The name of the data file tells you what condition and version of the experiment the subjects were in. For example, the file "subjects_condition-ctrl_version-easy.csv" contains the subjects who were in condition "ctrl" and version "easy".

The 9 extroversion questionnaire items are on a scale from 1 (low) to 7 (high), but some of the items need to be reverse-coded. This is indicated by the letter R in the question column name. You create the extroversion score by summing the questions *after* reversing the relevant questions.

Watch out for missing data. Omit subjects who have missing values for any of the variables involved in your analysis, but not subjects who have other missing variables.

The report should be written like a summary document for your PI. You don't need to show your code in the rendered report:

1. Include summary tables and/or plots with subject demographics from both the full data set and the subset you'll analyse.
2. Visualise the relationship of interest.
3. Conduct a GLM analysis to answer the research question above.
4. Do a power analysis to determine the sample size you would need to have 80% power to detect a 0.5-point difference between the levels of condition with an alpha criterion of 0.05.

Submission 
----------------------------------------------

Please submit a zip file of your **entire** project on Moodle by 17 December 2021. Make sure you submit a ZIP file containing:

* your rmarkdown file (.Rmd),
* any external files you need to run it (e.g., data files or external .R scripts), and
* the knitted output (.html)

Your reproducible report needs to evidence the following skills:

* [ ] a table of contents
* [ ] well-commented R code
* [ ] explanatory text
* [ ] loading and/or saving data from/to external files
* [ ] data re-shaping/wrangling using tidyverse
* [ ] data joining
* [ ] at least one table
* [ ] inline code to make numbers reported in the text reproducible
* [ ] data visualisation using ggplot
* [ ] a general linear model analysis
* [ ] data simulation
* [ ] at least one custom function
* [ ] citations/reference section using bibtex

Each criterion will be assessed for presence, appropriateness for the problem, and technical correctness. For example, you might include code in the YAML header for a table of contents, but a typo means that the ToC is not actually displayed. you would receive credit for presence and appropriateness, but not technical correctness. As another example, you might make a beautiful graph that doesn't illustrate what you say it does. You would receive credit for presence and technical correctness, but not appropriateness. For aspects like code commenting and explanatory text, the appropriateness mark will involve assessment of quality (e.g., understandability).
