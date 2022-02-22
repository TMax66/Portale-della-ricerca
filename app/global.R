library(shiny)
library(tidyverse)
#library(shinipsum)
#library(shinythemes)
library(shinyWidgets)
library(DT)
library(here)
library(readxl)
library(stringr)
library(bslib)

pubs<- readRDS(here( "data", "processed",  "pub.rds"))

prj <- readRDS(here("data", "processed",  "prj.rds"))


urlp <- "http[s]?://(?:[a-zA-Z]|[0-9]|[$-_@.&+]|[!*\\(\\),]|(?:%[0-9a-fA-F][0-9a-fA-F]))+"
