library("ape")
library("ggplot2")
library("plyr")
library("scales")
library("vegan")
library("knitr")
library("dplyr")
library("praise")
library("tidyverse")
library("phyloseq")
library("Bios2cor")
library("grid")
library(readxl)
library(lubridate)

hamstersAll <- rbind(hamster001, hamster002, hamster003, hamster004, hamster012, hamster014, hamster017, hamster019, hamster021, hamster028, hamster032, hamster041, hamster042, hamster046, hamster047, hamster048, hamster052, hamster054) 

hamster005
hamster016

unique(hamster005$DrugDescription)
unique(hamster016$DrugDescription)
unique(hamstersAll$DrugDescription)