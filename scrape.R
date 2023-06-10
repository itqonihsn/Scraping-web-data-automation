# Set library ----
message("Load the libraries")
library(rvest)
library(mongolite)
library(dplyr)

# Bitcoin Currency Site
# https://goldprice.org/cryptocurrency-price/bitcoin-price

message("Define function to scrape OP character")

url <- "https://goldprice.org/cryptocurrency-price/bitcoin-price"

page <- read_html(url)

Bitcoin <- page %>% html_table() %>%
  as.data.frame() %>%  
  subset(Rank == 1 ) %>%
  select(-8)

message("Connect to database")
db <- Sys.getenv("ATLAS_DB")
url <- Sys.getenv("ATLAS_URL")
collection <- Sys.getenv("ATLAS_COLLECTION")
con <- mongo(collection = collection,
             db = db,
             url = url)

# covid <- data.frame(no=integer(), cases=character(), deaths=character(), recovered=character())
message("Store data frame into mongo cloud")
newdata <- cbind(no = con$count() + 1, Bitcoin)

con$insert(newdata)

con$disconnect()
