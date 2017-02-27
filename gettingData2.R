
## check if folder already exist
if (! dir.exists("files"))
  dir.create("files")

## check if file already exist in the directory
if (! file.exists("./files/labour_force.csv")){
  URL <- "http://data.stats.gov.my/download_bptms.php?cat=1&id=34"
  download.file(URL,destfile = "./files/labour_force.csv", method = "c")
}

## load labour_force file into RStudio
library(readr)
labour_force <- read_csv("./files/labour_force.csv")
View(labour_force)