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

  PenLaptop1 <- PenLap('BJ8:BJ42', 'BM8:BM39')
  PenLaptop2 <- PenLap('BR8:BR56', 'BU8:BU111')
  PenLaptop3 <- PenLap('BZ8:BZ62', 'CC8:CC63')
  devtools::use_data(PenLaptop1, PenLaptop2, PenLaptop3, overwrite = TRUE)

# Thomason (Paired Groups, Correlation Chapters)
  Thomason1 <- readWorksheet(loadWorkbook('data-raw/ESCI intro chapters 3-8 beta Sep 26 2015.xlsm'), sheet = "Data paired", region = 'BH7:BI19')
  Thomason2 <- readWorksheet(loadWorkbook('data-raw/ESCI intro chapters 3-8 beta Sep 26 2015.xlsm'), sheet = "Data paired", region = 'BM7:BN23')
  Thomason3 <- readWorksheet(loadWorkbook('data-raw/ESCI intro chapters 3-8 beta Sep 26 2015.xlsm'), sheet = "Data paired", region = 'BR7:BS46')
  devtools::use_data(Thomason1, Thomason2, Thomason3, overwrite = TRUE)

# Body Wellness Data (Correlation chapter)
  female <- readWorksheet(loadWorkbook('data-raw/ESCI intro chapters 10-16 beta Jan 9 2016.xlsm'), sheet = "Scatterplots", region = 'BV6:BW65')
  male <- readWorksheet(loadWorkbook('data-raw/ESCI intro chapters 10-16 beta Jan 9 2016.xlsm'), sheet = "Scatterplots", region = 'CA6:CB53')

  BodyWell <- data.frame(
      sex = c(rep("female", nrow(female)), rep("male", nrow(male))),
      rbind(female, male)
  )
  colnames(BodyWell)[2:3] <- c("bodysat", "wellbeing")
  devtools::use_data(BodyWell, overwrite = TRUE)

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
  Dana <- data.frame(
    sex = c(rep("group one", nrow(g1)), rep("group two", nrow(g2))),
    rbind(g1, g2)
  )
  colnames(Dana)[2] <- "contact"
  devtools::use_data(natsal, Dana, overwrite = TRUE)

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
  CollegeSurvey1 <-x
  devtools::use_data(CollegeSurvey1, overwrite = TRUE)

# Religous Belief
  rm(x,j)
  x <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch03-Excercises data - descriptives-gdc.xlsx'), sheet = "religious_belief", region = 'A1:D201')
  y <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch03-Excercises data - descriptives-gdc.xlsx'), sheet = "religious_belief", region = 'F1:I214')
  z <- rbind(x, y)
  z$Condition <- factor(z$Condition)
  ReligousBelief <- z
  devtools::use_data(ReligousBelief, overwrite = TRUE)

# College Survey 2
  rm(X, y, z)
  x <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch03-Excercises data - descriptives-gdc.xlsx'), sheet = "college_survey_2", region = 'A1:Q139')
  x <- x [, -c(3, 7, 9)] # drop variables that are not needed as they duplicate other variables
  j <- which(sapply(x, class)=="character")
  x[, j] <- plyr::colwise(as.factor)(x[ ,j])
  x$School_Year <- factor(x$School_Year, levels = c("First-year", "Sophomore", "Junior", "Senior", "Post-bac"), ordered = TRUE)
  x$Emotion_Recognition <- x$Emotion_Recognition * 100
  CollegeSurvey2 <-x
  devtools::use_data(CollegeSurvey2, overwrite = TRUE)

## Ch5
  # College data files are the same as for Ch3, but sorted differently

## Ch7 - Two Groups Data
# Anchor Estimate
  rm(x, j)
  x <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch07-Excercises data - two groups-gdcsmall.xlsx'), sheet = "anchor_estimate", region = 'A1:H91')
  j <- which(sapply(x, class)=="character")
  x[, j] <- plyr::colwise(as.factor)(x[ ,j])
  AnchorEstimate <- x
  devtools::use_data(AnchorEstimate, overwrite = TRUE)

# Clean Moral
  # Schnall 2014
  rm(x)
  x <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch07-Excercises data - two groups-gdcsmall.xlsx'), sheet = "clean_moral", region = 'A2:C42')
  x$Condition <- factor(x$Condition)

  # Johnson 2014
  y <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch07-Excercises data - two groups-gdcsmall.xlsx'), sheet = "clean_moral", region = 'E2:G210')
  y$Condition <- factor(y$Condition)

  # Convert to .rda
  CleanMoral1 <- x
  CleanMoral2 <- y

  devtools::use_data(CleanMoral1, CleanMoral2, overwrite = TRUE)

# math gender IAT
  rm(x, y)
  x <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch07-Excercises data - two groups-gdcsmall.xlsx'), sheet = "math_gender_IAT", region = 'A1:D89')
  y <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch07-Excercises data - two groups-gdcsmall.xlsx'), sheet = "math_gender_IAT", region = 'F1:I156')
  z <- rbind(x, y)
  z$Location <- factor(z$Location)
  z$Gender <- factor(z$Gender)
  MathGenderIAT <- z
  devtools::use_data(MathGenderIAT, overwrite = TRUE)

# Superstition Golf
  rm(x, y, z)
  x <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch07-Excercises data - two groups-gdcsmall.xlsx'), sheet = "superstition_golf Ex 6 7", region = 'A1:G112')
  x[, 1:3] <- plyr::colwise(as.factor)(x[ , 1:3])
  SuperGolf <- x
  devtools::use_data(SuperGolf, overwrite = TRUE)


# Flag Priming
  rm(x)
  x <- readWorksheet(loadWorkbook('data-raw/ITNS-Ch07-Excercises data - two groups-gdcsmall.xlsx'), sheet = "flag_priming", region = 'A1:E91')
  x[, 2:4] <- plyr::colwise(factor)(x[ , 2:4])
  FlagPriming <- x
  devtools::use_data(FlagPriming, overwrite = TRUE)



