# Convert Excel data to .rda files
  options(java.parameters = "-Xmx4096m") # to avoid memory errors when loading Excel worksheets
  library(XLConnect)

  # ESCI Ch3 - 16 datasets -----------------------------------------------------------------------------------------------

# PenLaptop studies
  PenLap <- function(region1, region2, wb = 'data-raw/ESCI intro chapters 3-8 beta Sep 26 2015.xlsm', sheet = "Data two"){
    Pen <- readWorksheet(loadWorkbook(wb), sheet = sheet, region = region1)
    Laptop <- readWorksheet(loadWorkbook(wb), sheet = sheet, region = region2)
    df <- data.frame(group = factor(rep(c("Pen", "Laptop"), times = c(nrow(Pen), nrow(Laptop)))),
                     transcription = unlist(c(Pen, Laptop))
    )
    rownames(df) <- NULL
    df
  }
  pen_laptop1 <- PenLap('BJ8:BJ42', 'BM8:BM39')
  pen_laptop2 <- PenLap('BR8:BR56', 'BU8:BU111')
# pen_laptop3 <- PenLap('BZ8:BZ62', 'CC8:CC63')
#  devtools::use_data(pen_laptop1, pen_laptop2, pen_laptop3, overwrite = TRUE)
  devtools::use_data(pen_laptop1, pen_laptop2, overwrite = TRUE)

# Thomason (Paired Groups, Correlation Chapters)
  thomason1 <- readWorksheet(loadWorkbook('data-raw/ESCI intro chapters 3-8 beta Sep 26 2015.xlsm'), sheet = "Data paired", region = 'BH7:BI19')
  thomason2 <- readWorksheet(loadWorkbook('data-raw/ESCI intro chapters 3-8 beta Sep 26 2015.xlsm'), sheet = "Data paired", region = 'BM7:BN23')
  thomason3 <- readWorksheet(loadWorkbook('data-raw/ESCI intro chapters 3-8 beta Sep 26 2015.xlsm'), sheet = "Data paired", region = 'BR7:BS46')
  cn <- c("pre", "post")
  names(thomason1) <-(cn)
  names(thomason2) <-(cn)
  names(thomason3) <-(cn)
  devtools::use_data(thomason1, thomason2, thomason3, overwrite = TRUE)

# Body Wellness Data (Correlation chapter)
  female <- readWorksheet(loadWorkbook('data-raw/ESCI intro chapters 10-16 beta Jan 9 2016.xlsm'), sheet = "Scatterplots", region = 'BV6:BW65')
  male <- readWorksheet(loadWorkbook('data-raw/ESCI intro chapters 10-16 beta Jan 9 2016.xlsm'), sheet = "Scatterplots", region = 'CA6:CB53')

  body_well <- data.frame(
      sex = c(rep("female", nrow(female)), rep("male", nrow(male))),
      rbind(female, male)
  )
  colnames(body_well)[2:3] <- c("bodysat", "wellbeing")
  devtools::use_data(body_well, overwrite = TRUE)

# Robust two-group datsets (Ch 16)
## NATSAL
  rm(female, male)
  female <- readWorksheet(loadWorkbook('data-raw/ESCI intro chapters 10-16 beta Jan 9 2016.xlsm'), sheet = "Robust two", region = 'BN9:BN52', header = F)
  male <- readWorksheet(loadWorkbook('data-raw/ESCI intro chapters 10-16 beta Jan 9 2016.xlsm'), sheet = "Robust two", region = 'BK9:BK59', header = F)
  natsal <- data.frame(
    sex = c(rep("female", nrow(female)), rep("male", nrow(male))),
    rbind(female, male)
  )
  colnames(natsal)[2] <- "partners"

## Dana
  g1 <- readWorksheet(loadWorkbook('data-raw/ESCI intro chapters 10-16 beta Jan 9 2016.xlsm'), sheet = "Robust two", region = 'BS9:BS27', header = F)
  g2 <- readWorksheet(loadWorkbook('data-raw/ESCI intro chapters 10-16 beta Jan 9 2016.xlsm'), sheet = "Robust two", region = 'BV9:BV27', header = F)
  dana <- data.frame(
    group = c(rep("group one", nrow(g1)), rep("group two", nrow(g2))),
    rbind(g1, g2)
  )
  colnames(dana)[2] <- "contact"
  devtools::use_data(dana, overwrite = TRUE)

# Exercise Data ------------------------------------------------------------------------------------------------------
  rm(list = ls()) # delete all objects in the global environment

## Ch 3 - Descriptives
# College Survey 1
  x <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch03-Excercises data - descriptives-gdc.xlsx'), sheet = "college_survey_1", region = 'A1:W244')
  x <- x [, -c(3, 6, 8)] # drop variables that are not needed as they duplicate other variables
  j <- which(sapply(x, class)=="character")
  x[, j] <- plyr::colwise(as.factor)(x[ ,j])
  colnames(x)[4] <- "School_Year" # fix typo in name
  x$School_Year <- factor(x$School_Year, levels = c("First-year", "Sophomore", "Junior", "Senior", "Post-bac"), ordered = TRUE)
  x$Student_Athlete_Code <- factor(x$Student_Athlete_Code, labels = c("No", "Yes"))
  x$Raven_Score <- x$Raven_Score * 100
  colnames(x) <- stringr::str_to_lower(names(x)) # convert all column names to lowercase
  college_survey1 <-x
  devtools::use_data(college_survey1, overwrite = TRUE)

# Religious Belief
  rm(x,j)
  x <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch03-Excercises data - descriptives-gdc.xlsx'), sheet = "religious_belief", region = 'A1:D201')
  y <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch03-Excercises data - descriptives-gdc.xlsx'), sheet = "religious_belief", region = 'F1:I214')
  z <- rbind(x, y)
  z$Condition <- factor(z$Condition)
  colnames(z) <- stringr::str_to_lower(names(z)) # convert all column names to lowercase
  religious_belief <- z
  devtools::use_data(religious_belief, overwrite = TRUE)

# College Survey 2
  rm(X, y, z)
  x <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch03-Excercises data - descriptives-gdc.xlsx'), sheet = "college_survey_2", region = 'A1:Q139')
  x <- x [, -c(3, 7, 9)] # drop variables that are not needed as they duplicate other variables
  j <- which(sapply(x, class)=="character")
  x[, j] <- plyr::colwise(as.factor)(x[ ,j])
  x$School_Year <- factor(x$School_Year, levels = c("First-year", "Sophomore", "Junior", "Senior", "Post-bac"), ordered = TRUE)
  x$Emotion_Recognition <- x$Emotion_Recognition * 100
  colnames(x) <- stringr::str_to_lower(names(x)) # convert all column names to lowercase
  college_survey2 <-x
  devtools::use_data(college_survey2, overwrite = TRUE)

## Ch5
  # College data files are the same as for Ch3, but sorted differently

## Ch7 - Two Groups Data
# Anchor Estimate
  rm(x, j)
  x <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch07-Excercises data - two groups-gdcsmall.xlsx'), sheet = "anchor_estimate", region = 'A1:H91')
  j <- which(sapply(x, class)=="character")
  x[, j] <- plyr::colwise(as.factor)(x[ ,j])
  colnames(x) <- stringr::str_to_lower(names(x)) # convert all column names to lowercase
  anchor_estimate <- x
  devtools::use_data(anchor_estimate, overwrite = TRUE)

# Clean Moral
  # Schnall 2014
  rm(x)
  x <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch07-Excercises data - two groups-gdcsmall.xlsx'), sheet = "clean_moral", region = 'A2:C42')
  x$Condition <- factor(x$Condition)
  colnames(x) <- stringr::str_to_lower(names(x)) # convert all column names to lowercase

  # Johnson 2014
  y <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch07-Excercises data - two groups-gdcsmall.xlsx'), sheet = "clean_moral", region = 'E2:G210')
  y$Condition <- factor(y$Condition)
  colnames(y) <- stringr::str_to_lower(names(y)) # convert all column names to lowercase

  # Convert to .rda
  clean_moral1 <- x
  clean_moral2 <- y

  devtools::use_data(clean_moral1, clean_moral2, overwrite = TRUE)

# math gender IAT
  rm(x, y)
  x <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch07-Excercises data - two groups-gdcsmall.xlsx'), sheet = "math_gender_IAT", region = 'A1:D89')
  y <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch07-Excercises data - two groups-gdcsmall.xlsx'), sheet = "math_gender_IAT", region = 'F1:I156')
  z <- rbind(x, y)
  z$Location <- factor(z$Location)
  z$Gender <- factor(z$Gender)
  colnames(z) <- stringr::str_to_lower(names(z)) # convert all column names to lowercase
  math_gender_iat <- z
  devtools::use_data(math_gender_iat, overwrite = TRUE)

# Superstition Golf
  rm(x, y, z)
  x <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch07-Excercises data - two groups-gdcsmall.xlsx'), sheet = "superstition_golf Ex 6 7", region = 'A1:G112')
  x[, 1:3] <- plyr::colwise(as.factor)(x[ , 1:3])
  colnames(x) <- stringr::str_to_lower(names(x)) # convert all column names to lowercase
  super_golf <- x
  devtools::use_data(super_golf, overwrite = TRUE)

# Flag Priming
  rm(x)
  x <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch07-Excercises data - two groups-gdcsmall.xlsx'), sheet = "flag_priming", region = 'A1:E91')
  x[, 2:4] <- plyr::colwise(factor)(x[ , 2:4])
  colnames(x) <- stringr::str_to_lower(names(x)) # convert all column names to lowercase
  flag_priming <- x
  devtools::use_data(flag_priming, overwrite = TRUE)

# Ch 8 -  Paired data -----------------------------------------------------------------------------
  rm(list=ls(all=TRUE))
# Emotion Heartrate
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch08-Excercises data - paired-gdc.xlsx'), sheet = "emotion_heartrate", region = 'A1:E69')
  colnames(df) <- stringr::str_to_lower(names(df)) # convert colnames to lower case
  df$first_emotion <- factor(df$first_emotion)
  emotion_heartrate <- df
  devtools::use_data(emotion_heartrate, overwrite = TRUE)
  rm(df)

# Labels Flavor
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch08-Excercises data - paired-gdc.xlsx'), sheet = "labels_flavor", region = 'A1:F52')
  colnames(df) <- stringr::str_to_lower(names(df)) # convert colnames to lower case
  df$suspicous <- factor(df$suspicous, levels = 0:1, labels = c("suspicious", "not suspicious"))
  names(df)[6] <- "suspicious"
  names(df)[1] <- "participant_id"
  labels_flavor <- df
  devtools::use_data(labels_flavor, overwrite = TRUE)
  rm(df)

# Sensitization
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch08-Excercises data - paired-gdc.xlsx'), sheet = "sensitization Ex 5", region = 'A1:F13')
  colnames(df) <- stringr::str_to_lower(names(df)) # convert colnames to lower case
  names(df)[1] <- "animal_id"
  names(df)[3:6] <- c("trained_base", "trained_24h", "untrained_base", "untrained_24h") # rename as R colnames can't start with numbers
  df$trained_side <- factor(df$trained_side)
  sensitization <- df
  devtools::use_data(sensitization, overwrite = TRUE)
  rm(df)

# Learning Genes
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch08-Excercises data - paired-gdc.xlsx'), sheet = "learning_genes Ex 6", region = 'A1:G13')
  colnames(df) <- stringr::str_to_lower(names(df)) # convert colnames to lower case
  df$tissue <- factor(df$tissue)
  df$trained_side <- factor(df$trained_side)
  learning_genes <- df
  devtools::use_data(learning_genes, overwrite = TRUE)
  rm(df)

# Habituation
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch08-Excercises data - paired-gdc.xlsx'), sheet = "habituation", region = 'A1:D15')
  colnames(df) <- stringr::str_to_lower(names(df)) # convert colnames to lower case
  df$condition <- factor(df$condition)
  habituation <- df
  devtools::use_data(habituation, overwrite = TRUE)
  rm(df)

# Ch 9 -  Meta Analysis -----------------------------------------------------------------------------
# Anchor Adjust Meta-Analysis
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch09-Excercises data - meta-analysis-gdc.xlsx'), sheet = "anchor_adjust_meta-analysis", region = 'A1:I31')
  colnames(df) <- stringr::str_to_lower(names(df)) # convert colnames to lower case
  df$location <- factor(df$location)
  df$subset <- factor(df$subset)
  df$country <- factor(df$country)
  anchor_estimate_ma <- df
  devtools::use_data(anchor_estimate_ma, overwrite = TRUE)
  rm(df)

# Flag Priming
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch09-Excercises data - meta-analysis-gdc.xlsx'), sheet = "flag_priming_meta-analysis", region = 'A1:G26')
  colnames(df) <- stringr::str_to_lower(names(df)) # convert colnames to lower case
  df$location <- factor(df$location)
  ma_flag_priming <- df
  devtools::use_data(ma_flag_priming, overwrite = TRUE)
  rm(df)

# Math Gender IAT
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch09-Excercises data - meta-analysis-gdc.xlsx'), sheet = "math_gender_IAT_meta-analysis", region = 'A1:I31')
  colnames(df) <- stringr::str_to_lower(names(df)) # convert colnames to lower case
  df$location <- factor(df$location)
  df$subset <- factor(df$subset)
  df$country <- factor(df$country)
  ma_math_gender_iat <- df
  devtools::use_data(ma_math_gender_iat, overwrite = TRUE)
  rm(df)

# Power Performance
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch09-Excercises data - meta-analysis-gdc.xlsx'), sheet = "power_performance_meta-analysis", region = 'A1:O9')
  colnames(df) <- stringr::str_to_lower(names(df)) # convert colnames to lower case
  df[, 1:7] <- plyr::colwise(as.factor)(df [, 1:7])
  colnames(df)[13] <- "cohensd"
  df <- df [, -12] # cull empty column
  ma_power_performance <- df
  devtools::use_data(ma_power_performance, overwrite = TRUE)
  rm(df)

# Gambler Fallacy
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch09-Excercises data - meta-analysis-gdc.xlsx'), sheet = "gambler_fallacy_MA", region = 'A1:L13')
  df$Study <- factor(df$Study)
  df$Participant_Type <- factor(df$Participant_Type)
  names(df) <- stringr::str_to_lower(names(df))
  df <- df [, -6] # cull empty column
  ma_gambler_fallacy <- df
  devtools::use_data(ma_gambler_fallacy, overwrite = TRUE)
  rm(df)

# Anchor Adjust Chicago
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch09-Excercises data - meta-analysis-gdc.xlsx'), sheet = "anchor_adjust_chicago_MA", region = 'A1:G37')
  df$Location <- factor(df$Location)
  colnames(df) <- stringr::str_to_lower(names(df)) # convert colnames to lower case
  ma_anchor_adjust_chicago <- df
  devtools::use_data(ma_anchor_adjust_chicago, overwrite = TRUE)
  rm(df)

# Anchor Adjust Everest
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch09-Excercises data - meta-analysis-gdc.xlsx'), sheet = "anchor_adjust_everest_MA", region = 'A1:G37')
  df$Location <- factor(df$Location)
  colnames(df) <- stringr::str_to_lower(names(df)) # convert colnames to lower case
  ma_anchor_adjust_everest <- df
  devtools::use_data(ma_anchor_adjust_everest, overwrite = TRUE)
  rm(df)

# Ch 11 - Correlation -----------------------------------------------------------------------------
# Exam Scores
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch11-Excercises data - correlation-gdc.xlsx'), sheet = "exam_scores", region = 'A1:C10')
  colnames(df) <- c("id", "exam1", "exam_final")
  exam_scores <- df
  devtools::use_data(exam_scores, overwrite = TRUE)
  rm(df)

# Sleep Beauty
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch11-Excercises data - correlation-gdc.xlsx'), sheet = "sleep_beauty", region = 'A1:D71')
  colnames(df) <- stringr::str_to_lower(names(df)) # convert colnames to lower case
  sleep_beauty <- df[, 1:2] # only retain column 1 and 2
  names(sleep_beauty)[1] <- "nightly_sleep_hours"
  devtools::use_data(sleep_beauty, overwrite = TRUE)
  rm(df)

# Campus Involvement
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch11-Excercises data - correlation-gdc.xlsx'), sheet = "campus_involvement", region = 'A1:F114')
  colnames(df) <- stringr::str_to_lower(names(df)) # convert colnames to lower case
  df$gender <- factor(df$gender)
  df$commuter <- factor(df$commuter, levels = 0:1, labels = c("resident", "commuter"))
  campus_involvement <- df
  devtools::use_data(campus_involvement, overwrite = TRUE)
  rm(df)

#  ITNS Ch11 Ex 7
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch11-Excercises data - correlation-gdc.xlsx'), sheet = "ITNS-Ch11-Ex7", region = 'A1:E146')
  colnames(df) <- stringr::str_to_lower(names(df)) # convert colnames to lower case
  df$condition <- factor(df$condition)
  colnames(df)[5] <- "temperature_rating"
  ch11_ex7 <- df
  devtools::use_data(ch11_ex7, overwrite = TRUE)
  rm(df)

# Ch 12 - Regression -----------------------------------------------------------------------------
# Home Prices
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch12-Excercises data - regression-gdc.xlsx'), sheet = "home_prices", region = 'A1:G301')
  colnames(df) <- stringr::str_to_lower(names(df)) # convert colnames to lower case
  names(df)[6] <- "size"
  df$location <- factor(df$location)
  df$status <- factor(df$status)
  home_prices <- df
  devtools::use_data(home_prices, overwrite = TRUE)
  rm(df)

# Altruism Happiness
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch12-Excercises data - regression-gdc.xlsx'), sheet = "altruism_happiness", region = 'A1:H51')
  colnames(df) <- stringr::str_to_lower(names(df)) # convert colnames to lower case
  df[, 1:2] <- plyr::colwise(as.factor)(df[, 1:2])
  names(df)[6:8] <- c("well_being_2010_rounded", "kidney_rate_per1000", "wb_change")
  df <- df[, -2] # drop abbreviation as not needed
  altruism_happiness <- df
  devtools::use_data(altruism_happiness, overwrite = TRUE)
  rm(df)

# Ch 12 Ex 3
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch12-Excercises data - regression-gdc.xlsx'), sheet = "ITNS-Ch12-Ex3", region = 'A1:B211')
  colnames(df) <- stringr::str_to_lower(names(df)) # convert colnames to lower case
  names(df)[2] <- "motor_skill"
  ch12_ex3 <- df
  devtools::use_data(ch12_ex3, overwrite = TRUE)
  rm(df)

# Ch12 Ex4
  # Exclude for now, unsure if this need to be included


# Home Prices Holdout
  # Only include the actual data, not the regression workings
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch12-Excercises data - regression-gdc.xlsx'), sheet = "home_prices_holdout", region = 'A1:F11')
  df <- df[, c(1, 2, 6)]
  names(df) <- c("new_case", "size", "asking_price")
  home_prices_holdout <- df
  devtools::use_data(home_prices_holdout, overwrite = TRUE)
  rm(df)

# Ch 13 Exercises - Extended Designs 1 -----------------------------------------------------------------------------

  # Exclude summary statistics for now, use only raw data

# Organic Moral Replication
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch13-Exercises data - extended one.xlsx'), sheet = "organic_moral", region = 'A10:D48')
  x <- na.omit(df[,1])
  y <- na.omit(df[,2])
  z <- na.omit(df[,3])
  organic_moral <- data.frame(
    food = factor(rep(c("organic", "control", "comfort"), c(length(x), length(y), length(z)))),
    judge = c(x, y, z)
    )
  devtools::use_data(organic_moral, overwrite = TRUE)
  rm(df, x, y, z)


# Inauthentic
  x <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch13-Exercises data - extended one.xlsx'), sheet = "inauthentic", region = 'A2:D221')
  y <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch13-Exercises data - extended one.xlsx'), sheet = "inauthentic", region = 'F2:I221')
  z <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch13-Exercises data - extended one.xlsx'), sheet = "inauthentic", region = 'K2:N221')

  # IV, Cleaning, Alienation, Neutral
  i <- 1:219
  j <- 1
  g1 <- data.frame(group = as.character("auth_notruth"), cleaning = x[i, j], neutral = y[i, j], alienation = z[i,  j])


  i <- 1:214
  j <- 2
  g2 <- data.frame(group = as.character("auth_gen"), cleaning = x[i, j], neutral = y[i, j], alienation = z[i,  j])


  i <- 1:199
  j <- 3
  g3 <- data.frame(group = as.character("inauth_notruth"), cleaning = x[i, j], neutral = y[i, j], alienation = z[i,  j])

  i <- 1:206
  j <- 4
  g4 <- data.frame(group = as.character("inauth_gen"), cleaning = x[i, j], neutral = y[i, j], alienation = z[i,  j])

  inauthentic <- rbind(g1, g2, g3, g4)

  devtools::use_data(inauthentic, overwrite = TRUE)
  rm(x, y, z, g1, g2, g3, g4, i, j)

# IQ Booster
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch13-Exercises data - extended one.xlsx'), sheet = "IQBoosters", region = 'A1:F11')
  df <- reshape2:: melt(df, measure.vars = 1:6, variable.name = "drug", value.name = "iq")
  levels(df$drug) <- c("Placebo", "DrugA", "DrugB", "DrugC", "DrugD", "DrugE")
  iq_boost <- df
  devtools::use_data(iq_boost, overwrite = TRUE)
  rm(df)

# Ch 14 Exercises - Extended Designs 2 -----------------------------------------------------------------------------
# Videogame aggression
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch14-Exercises data - extended two IVs.xlsx'), sheet = "videogame_aggression", region = 'A1:D57')
  colnames(df) <- stringr::str_to_lower(names(df)) # convert colnames to lower case
  library(tidyr)
  library(dplyr)
  df <- gather(df, key = "group", value = "aggression", 1:4, factor_key = TRUE)
  df <- separate(df, group, into = c("violence", "difficulty"))
  df$violence <- factor(df$violence)
  df$difficulty <- factor(df$difficulty)
  videogame_aggression <- df
  devtools::use_data(videogame_aggression, overwrite = TRUE)
  rm(df)

# Self-Explain Time
  x <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch14-Exercises data - extended two IVs.xlsx'), sheet = "self-explain_time", region = 'A1:F18')
  y <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch14-Exercises data - extended two IVs.xlsx'), sheet = "self-explain_time", region = 'H1:M22')
  z <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch14-Exercises data - extended two IVs.xlsx'), sheet = "self-explain_time", region = 'O1:T32')
  df <- rbind(x, z, y)
  df <- df [, -6]
  df <- gather(df, key = "time", value = "knowledge", 4:5, factor_key = TRUE)
  levels(df$time) <- c("pre", "post")
  cn <- c("id", "condition", "grade", "time", "knowledge")
  names(df) <- cn
  df[df$condition == "Add'l Practice", "condition"] <- "Additional Practice"
  df$condition <- factor(df$condition)
  self_explain_time <- df
  devtools::use_data(self_explain_time, overwrite = TRUE)
  rm(x, y, z, df)

# Blame1
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch14-Exercises data - extended two IVs.xlsx'), sheet = "blame1", region = 'A1:D106')
  x <- na.omit(df[,1])
  y <- na.omit(df[,2])
  z <- na.omit(df[,3])
  zz <-na.omit(df[,4])
  df <- data.frame(condition = rep(c("black_low","black_high", "white_low", "White_high"), c(length(x), length(y), length(z), length(zz))),
                          blame = c(x, y, z, zz)
  )
  blame1 <- df
  blame1$id <- 1:nrow(blame1) # add an identifier
  blame1 <- separate(blame1, col = "condition", into = c("race", "ses"))
  blame1$race <- factor(blame1$race)
  blame1$ses <- factor(blame1$ses)
  blame1 <- blame1[, c(4, 1:3)]
  devtools::use_data(blame1, overwrite = TRUE)
  rm(x, y, z, zz, df)

# Blame 2
  df <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch14-Exercises data - extended two IVs.xlsx'), sheet = "blame2", region = 'A1:D130')
  x <- na.omit(df[,1])
  y <- na.omit(df[,2])
  z <- na.omit(df[,3])
  zz <-na.omit(df[,4])
  df <- data.frame(condition = rep(c("black_low","black_high", "white_low", "White_high"), c(length(x), length(y), length(z), length(zz))),
                   blame = c(x, y, z, zz)
  )
  blame2 <- df

  blame2 <- df
  blame2$id <- 1:nrow(blame2) # add an identifier
  blame2 <- separate(blame2, col = "condition", into = c("race", "ses"))
  blame2$race <- stringr::str_to_lower(blame2$race)
  blame2$race <- factor(blame2$race)
  blame2$ses <- factor(blame2$ses)
  blame2 <- blame2[, c(4, 1:3)]
  devtools::use_data(blame2, overwrite = TRUE)
  rm(x, y, z, zz, df)
  devtools::use_data(blame2, overwrite = TRUE)

  
## Add Ch 6 Sleep Deprivation Data
  # Source = https://www.statcrunch.com/app/index.php?dataid=1053539
  stickgold <- data.frame(sleep = factor(rep("deprived", 11)), 
                          improvement = c(  -14.7,
                                            -10.7,
                                            -10.7,
                                            2.2,
                                            2.4,
                                            4.5,
                                            7.2,
                                            9.6,
                                            10,
                                            21.3,
                                            21.8)
            )
  devtools::use_data(stickgold, overwrite = TRUE)
  
## Add Ch 14 Rattan Data
  options(java.parameters = "-Xmx4096m") # to avoid memory errors when loading Excel worksheets
  library(XLConnect)
  
  df <- readWorksheet(loadWorkbook('data-raw/ESCI intro chapters 10-16 beta Jan 9 2016.xlsm'), sheet = "Ind groups comparisons", region = 'AY8:BA26')
  x <- na.omit(df[,1])
  y <- na.omit(df[,2])
  z <- na.omit(df[,3])
  df <- data.frame(group = rep(c("comfort", "challng", "control"), c(length(x), length(y), length(z))),
                   motivation = c(x, y, z)
  )
  rattan <- df
  rattan$group <- factor(rattan$group)
  devtools::use_data(rattan, overwrite = TRUE)
  rm(x, y, z, df)
  
  