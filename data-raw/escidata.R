# Example of converting Excel data to .rda files

library(XLConnect)
PenLaptop1 <- readWorksheet(loadWorkbook('data-raw/escidata.xlsx'), sheet = "PenLaptop1")
PenLaptop1$Group <- factor(PenLaptop1$Group)
devtools::use_data(PenLaptop1, overwrite = TRUE)
dim(PenLaptop1)
