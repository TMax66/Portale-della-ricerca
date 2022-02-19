library(tidyverse)
library(here)
library(readxl)


# conOre <- DBI::dbConnect(odbc::odbc(), Driver = "SQL Server", Server = "dbtest02", 
#                          Database = "DW_COGE_DEV", Port = 1433)
# 
# source(here("R","sql.R"))
# 
# ore <- conOre %>% tbl(sql(queryOre)) %>% as_tibble()   
# names(ore)[1:6] <- c("Dipartimento", "Reparto", "Laboratorio", "CDC", "CodiceCC", "ANNO")
# 
# #Anagrafe
# 
# 
# 
# anag <- ore %>% 
#   mutate(annoraplav = year(FineRapporto)) %>% 
#   filter(annoraplav > 2018)%>%
#   mutate(Nome = gsub("\\s.*$", "", Nome) )
# 
# 
# 
# pubblicazioni <- read_excel(here("data", "raw", "pubblicazioni.xlsx"))
# pubblicazioni$AU <- str_to_upper(pubblicazioni$AU)
# pubblicazioni$AU <- str_remove(pubblicazioni$AU, " ")
# pubblicazioni$AU <- gsub("_", " ", pubblicazioni$AU)
# pubblicazioni$Nome <- str_extract( pubblicazioni$AU, ",.*$")
# pubblicazioni$Nome <- str_remove(pubblicazioni$Nome, ",")
# pubblicazioni$Nome <- gsub("\\s.*$", "", pubblicazioni$Nome)
# pubblicazioni$Cognome <- gsub(",.*$", "", pubblicazioni$AU)
# 
# pubblicazioni %>% filter(OA >= 2019) %>%
#   left_join(anag, by = c("Cognome" = "Cognome", "Nome" = "Nome", "OA" = "ANNO")) %>%  
#   # filter(Dirigente == "S") %>%  
#   mutate(Dipartimento = casefold(Dipartimento, upper = TRUE)) %>% 
#   saveRDS(., file = here( "data", "processed",  "pub.rds"))


