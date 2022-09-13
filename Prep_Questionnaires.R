## ----'setup'------------------------------------------------------------------
library(tidyverse)
library(tidyr)
library(dplyr)
setwd("C:/Users/vuori/Documents/GITHUB/Short_Story_Reading_Behaviour_Public") # temporary
getwd() # check that working directory is ~/Short_Story_Reading_Behaviour_Public


## ----'load data'--------------------------------------------------------------
raw_questionnaire_data <- read.csv(
    "Data/raw_questionnaire_data.csv",
    header = TRUE,
    sep = ";",
    dec = ","
)


## ----'change variable types'--------------------------------------------------
str(raw_questionnaire_data)
source("Functions/Functions_VariableTypeConversion.R")

## turn columns into factors that should be factors
names(raw_questionnaire_data)[names(raw_questionnaire_data) == "BookId"] <- "StoryId"
raw_questionnaire_data[, c(
    "UserId",
    "StoryId"
)] <- convert.magic(
    raw_questionnaire_data[, c(
        "UserId",
        "StoryId"
    )],
    "factor"
)


## ----'remove excluded'--------------------------------------------------------
raw_questionnaire_data <-
    filter(
        raw_questionnaire_data,
        UserId != "33"
    )
raw_questionnaire_data <-
    filter(
        raw_questionnaire_data,
        UserId != "61"
    )
raw_questionnaire_data <-
    filter(
        raw_questionnaire_data,
        UserId != "81"
    )


## ----'create answer and question datasets'------------------------------------
all_answer_data <- raw_questionnaire_data %>%
    group_by(UserId) %>%
    select(-Question, -StoryId) %>%
    pivot_wider(
        names_from = c(Questionnaire, QuestionNumber),
        values_from = Answer
    )
all_questions_data <- raw_questionnaire_data %>%
    select(-UserId, -StoryId, -Answer) %>%
    distinct() %>%
    pivot_wider(
        names_from = c(Questionnaire, QuestionNumber),
        values_from = Question
    )


## ----'create a dataset on demographics'---------------------------------------
demographics_data <-
    all_answer_data[, c(1, 22:24)]
names(demographics_data)[2:4] <- c("Age", "Gender", "NativeEnglish")
str(demographics_data)
demographics_data$Age <-
    as.numeric(
        demographics_data$Age
    )


## ----'demographics'-----------------------------------------------------------
# Gender
table(demographics_data$Gender)
# Age
mean(demographics_data$Age)
sd(demographics_data$Age)
range(demographics_data$Age)
# Native language
table(demographics_data$NativeEnglish)


## ----'create dataset for IMI'-------------------------------------------------
# select correct columns from all_answer_data
IMI_data <- all_answer_data[, c(1, 38:64)]
# remove special characters from answers
IMI_data <- as.data.frame(IMI_data)
for (item in 2:length(IMI_data)) {
    IMI_data[, item] <- substr(
        IMI_data[, item],
        1,
        1
    )
}
IMI_data <- IMI_data %>%
    mutate_if(is.character, as.numeric)


## ----'reverse IMI questions'--------------------------------------------------
# reversed questions
ReversedItemsIMI <- c(
    "questionnaire22_9",
    "questionnaire22_10",
    "questionnaire22_11",
    "questionnaire22_12",
    "questionnaire22_16",
    "questionnaire22_17",
    "questionnaire22_20",
    "questionnaire22_25",
    "questionnaire22_26",
    "questionnaire22_27",
    "questionnaire22_29",
    "questionnaire22_30"
)
for (item in 2:length(IMI_data)) {
    if (any((colnames(IMI_data)[item]) == ReversedItemsIMI)) {
        IMI_data[, item] <- 8 - IMI_data[, item]
    }
}


## ----'group IMI responses'----------------------------------------------------
# Identify the items belonging in each factor
interest_items <- c(2, 5, 8, 12, 16, 20, 22)
competence_items <- c(3, 9, 13, 17, 27, 28)
effort_items <- c(7, 11, 18, 23, 25)
pressure_items <- c(6, 19)
choice_items <- c(4, 10, 14, 15, 21, 24, 26)

# find each participants' mean for each factor
IMI_grouped_data <-
    data.frame(
        UserId = IMI_data$UserId,
        Interest = (
            apply(IMI_data[c(interest_items)], 1, sum)
            / length(IMI_data[c(interest_items)])
        ),
        Competence = (
            apply(IMI_data[c(competence_items)], 1, sum)
            / length(IMI_data[c(competence_items)])
        ),
        Effort = (
            apply(IMI_data[c(effort_items)], 1, sum)
            / length(IMI_data[c(effort_items)])
        ),
        Pressure = (
            apply(IMI_data[c(pressure_items)], 1, sum)
            / length(IMI_data[c(pressure_items)])
        ),
        Choice = (
            apply(IMI_data[c(choice_items)], 1, sum)
            / length(IMI_data[c(choice_items)])
        )
    )


## ---- eval=FALSE, echo=TRUE---------------------------------------------------
## # write.csv2(
## #    IMI_grouped_data,
## #    "IMI_grouped_questionnaire_data.csv"
## # )

