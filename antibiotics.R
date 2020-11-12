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

#here i import the hospital drug regimes for the patients

#cvg001
antiB001 <- read_excel("Antibiotics on px with more than 3 samples anonymised.xlsx", sheet = 2)

str(antiB001)
antiB001$Administered_dttm <- as_date(antiB001$Administered_dttm)
antiB001$Scheduled_dttm <- as_date(antiB001$Scheduled_dttm)

antiB001$DrugDescription <- word(antiB001$DrugDescription, 1) %>% 
  str_to_lower()

write.csv(antiB001, file = "antiB001.csv")




#cvg002
antiB002 <- read_excel("Antibiotics on px with more than 3 samples anonymised.xlsx", sheet = 3)

str(antiB002)
antiB002$Administered_dttm <- as_date(antiB002$Administered_dttm)
antiB002$Scheduled_dttm <- as_date(antiB002$Scheduled_dttm)

antiB002$DrugDescription <- word(antiB002$DrugDescription, 1) %>% 
  str_to_lower()

unique(antiB002$DrugDescription)

write.csv(antiB002, file = "antiB002.csv")

#cvg003
antiB003 <- read_excel("Antibiotics on px with more than 3 samples anonymised.xlsx", sheet = 4)

str(antiB003)
antiB003$Administered_dttm <- as_date(antiB003$Administered_dttm)
antiB003$Scheduled_dttm <- as_date(antiB003$Scheduled_dttm)

antiB003$DrugDescription <- word(antiB003$DrugDescription, 1) %>% 
  str_to_lower()

unique(antiB003$DrugDescription)

write.csv(antiB003, file = "antiB003.csv")

#cvg004
antiB004 <- read_excel("Antibiotics on px with more than 3 samples anonymised.xlsx", sheet = 5)

str(antiB004)
antiB004$Administered_dttm <- as_date(antiB004$Administered_dttm)
antiB004$Scheduled_dttm <- as_date(antiB004$Scheduled_dttm)

antiB004$DrugDescription <- word(antiB004$DrugDescription, 1) %>% 
  str_to_lower()

unique(antiB004$DrugDescription)

#cvg012
antiB012 <- read_excel("Antibiotics on px with more than 3 samples anonymised.xlsx", sheet = 6)

str(antiB012)
antiB012$Administered_dttm <- as_date(antiB012$Administered_dttm)
antiB012$Scheduled_dttm <- as_date(antiB012$Scheduled_dttm)

antiB012$DrugDescription <- word(antiB012$DrugDescription, 1) %>% 
  str_to_lower()

unique(antiB012$DrugDescription)

#cvg014
antiB014 <- read_excel("Antibiotics on px with more than 3 samples anonymised.xlsx", sheet = 7)

str(antiB014)
antiB014$Administered_dttm <- as_date(antiB014$Administered_dttm)
antiB014$Scheduled_dttm <- as_date(antiB014$Scheduled_dttm)

antiB014$DrugDescription <- word(antiB014$DrugDescription, 1) %>% 
  str_to_lower()

unique(antiB014$DrugDescription)

#cvg017
antiB017 <- read_excel("Antibiotics on px with more than 3 samples anonymised.xlsx", sheet = 8)

str(antiB017)
antiB017$Administered_dttm <- as_date(antiB017$Administered_dttm)
antiB017$Scheduled_dttm <- as_date(antiB017$Scheduled_dttm)

antiB017$DrugDescription <- word(antiB017$DrugDescription, 1) %>% 
  str_to_lower()

unique(antiB017$DrugDescription)

write.csv(antiB017, file = "antiB017.csv")


#cvg019
antiB019 <- read_excel("Antibiotics on px with more than 3 samples anonymised.xlsx", sheet = 9)

str(antiB019)
antiB019$Administered_dttm <- as_date(antiB019$Administered_dttm)
antiB019$Scheduled_dttm <- as_date(antiB019$Scheduled_dttm)

antiB019$DrugDescription <- word(antiB019$DrugDescription, 1) %>% 
  str_to_lower()

unique(antiB019$DrugDescription)

#cvg021
antiB021 <- read_excel("Antibiotics on px with more than 3 samples anonymised.xlsx", sheet = 10)

str(antiB021)
antiB021$Administered_dttm <- as_date(antiB021$Administered_dttm)
antiB021$Scheduled_dttm <- as_date(antiB021$Scheduled_dttm)

antiB021$DrugDescription <- word(antiB021$DrugDescription, 1) %>% 
  str_to_lower()

unique(antiB021$DrugDescription)

#cvg028
antiB028 <- read_excel("Antibiotics on px with more than 3 samples anonymised.xlsx", sheet = 11)

str(antiB028)
antiB028$Administered_dttm <- as_date(antiB028$Administered_dttm)
antiB028$Scheduled_dttm <- as_date(antiB028$Scheduled_dttm)

antiB028$DrugDescription <- word(antiB028$DrugDescription, 1) %>% 
  str_to_lower()

unique(antiB028$DrugDescription)

write.csv(antiB028, file = "antiB028.csv")

#cvg032
antiB032 <- read_excel("Antibiotics on px with more than 3 samples anonymised.xlsx", sheet = 12)

str(antiB032)
antiB032$Administered_dttm <- as_date(antiB032$Administered_dttm)
antiB032$Scheduled_dttm <- as_date(antiB032$Scheduled_dttm)

antiB032$DrugDescription <- word(antiB032$DrugDescription, 1) %>% 
  str_to_lower()

unique(antiB032$DrugDescription)

write.csv(antiB032, file = "antiB032.csv")


#cvg041
antiB041 <- read_excel("Antibiotics on px with more than 3 samples anonymised.xlsx", sheet = 13)

str(antiB041)
antiB041$Administered_dttm <- as_date(antiB041$Administered_dttm)
antiB041$Scheduled_dttm <- as_date(antiB041$Scheduled_dttm)

antiB041$DrugDescription <- word(antiB041$DrugDescription, 1) %>% 
  str_to_lower()

unique(antiB041$DrugDescription)

#cvg042
antiB042 <- read_excel("Antibiotics on px with more than 3 samples anonymised.xlsx", sheet = 14)

str(antiB042)
antiB042$Administered_dttm <- as_date(antiB042$Administered_dttm)
antiB042$Scheduled_dttm <- as_date(antiB042$Scheduled_dttm)

antiB042$DrugDescription <- word(antiB042$DrugDescription, 1) %>% 
  str_to_lower()

unique(antiB042$DrugDescription)

write.csv(antiB042, file = "antiB042.csv")


#cvg046
antiB046 <- read_excel("Antibiotics on px with more than 3 samples anonymised.xlsx", sheet = 15)

str(antiB046)
antiB046$Administered_dttm <- as_date(antiB046$Administered_dttm)
antiB046$Scheduled_dttm <- as_date(antiB046$Scheduled_dttm)

antiB046$DrugDescription <- word(antiB046$DrugDescription, 1) %>% 
  str_to_lower()

unique(antiB046$DrugDescription)

#cvg047
antiB047 <- read_excel("Antibiotics on px with more than 3 samples anonymised.xlsx", sheet = 16)

str(antiB047)
antiB047$Administered_dttm <- as_date(antiB047$Administered_dttm)
antiB047$Scheduled_dttm <- as_date(antiB047$Scheduled_dttm)

antiB047$DrugDescription <- word(antiB047$DrugDescription, 1) %>% 
  str_to_lower()

unique(antiB047$DrugDescription)

write.csv(antiB047, file = "antiB047.csv")

#cvg048
antiB048 <- read_excel("Antibiotics on px with more than 3 samples anonymised.xlsx", sheet = 17)

str(antiB048)
antiB048$Administered_dttm <- as_date(antiB048$Administered_dttm)
antiB048$Scheduled_dttm <- as_date(antiB048$Scheduled_dttm)

antiB048$DrugDescription <- word(antiB048$DrugDescription, 1) %>% 
  str_to_lower()

unique(antiB048$DrugDescription)

write.csv(antiB048, file = "antiB048.csv")

#cvg052
antiB052 <- read_excel("Antibiotics on px with more than 3 samples anonymised.xlsx", sheet = 18)

str(antiB052)
antiB052$Administered_dttm <- as_date(antiB052$Administered_dttm)
antiB052$Scheduled_dttm <- as_date(antiB052$Scheduled_dttm)

antiB052$DrugDescription <- word(antiB052$DrugDescription, 1) %>% 
  str_to_lower()

unique(antiB052$DrugDescription)

write.csv(antiB052, file = "antiB052.csv")

#cvg054
antiB054 <- read_excel("Antibiotics on px with more than 3 samples anonymised.xlsx", sheet = 19)

str(antiB054)
antiB054$Administered_dttm <- as_date(antiB054$Administered_dttm)
antiB054$Scheduled_dttm <- as_date(antiB054$Scheduled_dttm)

antiB054$DrugDescription <- word(antiB054$DrugDescription, 1) %>% 
  str_to_lower()

unique(antiB054$DrugDescription)

#cvg016
antiB016 <- read_excel("Antibiotics on px with more than 3 samples anonymised CVG005 and CVG 016.xlsx", sheet = 2)

str(antiB016)
antiB016$Administered_dttm <- as_date(antiB016$Administered_dttm)
antiB016$Scheduled_dttm <- as_date(antiB016$Scheduled_dttm)

antiB016$DrugDescription <- word(antiB016$DrugDescription, 1) %>% 
  str_to_lower()

unique(antiB016$DrugDescription)

write.csv(antiB016, file = "antiB016.csv")

#cvg005
antiB005 <- read_excel("Antibiotics on px with more than 3 samples anonymised CVG005 and CVG 016.xlsx", sheet = 1)

str(antiB005)
antiB005$Administered_dttm <- as_date(antiB005$Administered_dttm)
antiB005$Scheduled_dttm <- as_date(antiB005$Scheduled_dttm)

antiB005$DrugDescription <- word(antiB005$DrugDescription, 1) %>% 
  str_to_lower()

unique(antiB005$DrugDescription)

write.csv(antiB005, file = "antiB005.csv")

##################################################################

#import genrea found in patients

generaOfInterest = read.csv("antibioticSusceptibilities.csv")

unique(generaOfInterest$Genus)

UniqueGenus <- unique(generaOfInterest$Genus)
write.csv(UniqueGenus, file = "UniqueGenusAll.csv")

generaOfInterest = read.csv("HighAbundanceGenera.csv")
unique(generaOfInterest$Genus)
UniqueGenus <- unique(generaOfInterest$Genus)
write.csv(UniqueGenus, file = "UniqueGenusHigh.csv")

#####################################################################
#plotting the sampling time points (to show which worked and which didn't)

ggplot(hamster001, aes(x=hamster001$Administered_dttm, y=hamster001$DrugDescription, color=hamster001$Type, fill=hamster001$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Drug") +
  guides(fill=FALSE) +
  theme_bw()
ggsave("antibioticsT001.pdf", width = 47, height = 40, units = c('cm'))

#plotting the sampling time points (to show which worked and which didn't)

ggplot(hamster002, aes(x=hamster002$Administered_dttm, y=hamster002$DrugDescription, color=hamster002$Type, fill=hamster002$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Drug") +
  guides(fill=FALSE) +
  theme_bw()
ggsave("antibioticsT002.pdf", width = 47, height = 40, units = c('cm'))

#plotting the sampling time points (to show which worked and which didn't)

ggplot(hamster003, aes(x=hamster003$Administered_dttm, y=hamster003$DrugDescription, color=hamster003$Type, fill=hamster003$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Drug") +
  guides(fill=FALSE) +
  theme_bw()
ggsave("antibioticsT003.pdf", width = 47, height = 40, units = c('cm'))

#plotting the sampling time points (to show which worked and which didn't)

ggplot(hamster004, aes(x=hamster004$Administered_dttm, y=hamster004$DrugDescription, color=hamster004$Type, fill=hamster004$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Drug") +
  guides(fill=FALSE) +
  theme_bw()
ggsave("antibioticsT004.pdf", width = 47, height = 40, units = c('cm'))

#plotting the sampling time points (to show which worked and which didn't)

ggplot(hamster012, aes(x=hamster012$Administered_dttm, y=hamster012$DrugDescription, color=hamster012$Type, fill=hamster012$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Drug") +
  guides(fill=FALSE) +
  theme_bw()
ggsave("antibioticsT012.pdf", width = 47, height = 40, units = c('cm'))

#plotting the sampling time points (to show which worked and which didn't)

ggplot(hamster014, aes(x=hamster014$Administered_dttm, y=hamster014$DrugDescription, color=hamster014$Type, fill=hamster014$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Drug") +
  guides(fill=FALSE) +
  theme_bw()
ggsave("antibioticsT014.pdf", width = 47, height = 40, units = c('cm'))

#plotting the sampling time points (to show which worked and which didn't)

ggplot(hamster017, aes(x=hamster017$Administered_dttm, y=hamster017$DrugDescription, color=hamster017$Type, fill=hamster017$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Drug") +
  guides(fill=FALSE) +
  theme_bw()
ggsave("antibioticsT017.pdf", width = 47, height = 40, units = c('cm'))

#plotting the sampling time points (to show which worked and which didn't)

ggplot(hamster019, aes(x=hamster019$Administered_dttm, y=hamster019$DrugDescription, color=hamster019$Type, fill=hamster019$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Drug") +
  guides(fill=FALSE) +
  theme_bw()
ggsave("antibioticsT019.pdf", width = 47, height = 40, units = c('cm'))

#plotting the sampling time points (to show which worked and which didn't)

ggplot(hamster021, aes(x=hamster021$Administered_dttm, y=hamster021$DrugDescription, color=hamster021$Type, fill=hamster021$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Drug") +
  guides(fill=FALSE) +
  theme_bw()
ggsave("antibioticsT021.pdf", width = 47, height = 40, units = c('cm'))

#plotting the sampling time points (to show which worked and which didn't)

ggplot(hamster028, aes(x=hamster028$Administered_dttm, y=hamster028$DrugDescription, color=hamster028$Type, fill=hamster028$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Drug") +
  guides(fill=FALSE) +
  theme_bw()
ggsave("antibioticsT028.pdf", width = 47, height = 40, units = c('cm'))

#plotting the sampling time points (to show which worked and which didn't)

ggplot(hamster032, aes(x=hamster032$Administered_dttm, y=hamster032$DrugDescription, color=hamster032$Type, fill=hamster032$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Drug") +
  guides(fill=FALSE) +
  theme_bw()
ggsave("antibioticsT032.pdf", width = 47, height = 40, units = c('cm'))

#plotting the sampling time points (to show which worked and which didn't)

ggplot(hamster041, aes(x=hamster041$Administered_dttm, y=hamster041$DrugDescription, color=hamster041$Type, fill=hamster041$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Drug") +
  guides(fill=FALSE) +
  theme_bw()
ggsave("antibioticsT041.pdf", width = 47, height = 40, units = c('cm'))

#plotting the sampling time points (to show which worked and which didn't)

ggplot(hamster042, aes(x=hamster042$Administered_dttm, y=hamster042$DrugDescription, color=hamster042$Type, fill=hamster042$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Drug") +
  guides(fill=FALSE) +
  theme_bw()
ggsave("antibioticsT042.pdf", width = 47, height = 40, units = c('cm'))

#plotting the sampling time points (to show which worked and which didn't)

ggplot(hamster046, aes(x=hamster046$Administered_dttm, y=hamster046$DrugDescription, color=hamster046$Type, fill=hamster046$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Drug") +
  guides(fill=FALSE) +
  theme_bw()
ggsave("antibioticsT046.pdf", width = 47, height = 40, units = c('cm'))

#plotting the sampling time points (to show which worked and which didn't)

ggplot(hamster047, aes(x=hamster047$Administered_dttm, y=hamster047$DrugDescription, color=hamster047$Type, fill=hamster047$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Drug") +
  guides(fill=FALSE) +
  theme_bw()
ggsave("antibioticsT047.pdf", width = 47, height = 40, units = c('cm'))

#plotting the sampling time points (to show which worked and which didn't)

ggplot(hamster048, aes(x=hamster048$Administered_dttm, y=hamster048$DrugDescription, color=hamster048$Type, fill=hamster048$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Drug") +
  guides(fill=FALSE) +
  theme_bw()
ggsave("antibioticsT048.pdf", width = 47, height = 40, units = c('cm'))

#plotting the sampling time points (to show which worked and which didn't)

ggplot(hamster052, aes(x=hamster052$Administered_dttm, y=hamster052$DrugDescription, color=hamster052$Type, fill=hamster052$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Drug") +
  guides(fill=FALSE) +
  theme_bw()
ggsave("antibioticsT052.pdf", width = 47, height = 40, units = c('cm'))

#plotting the sampling time points (to show which worked and which didn't)

ggplot(hamster054, aes(x=hamster054$Administered_dttm, y=hamster054$DrugDescription, color=hamster054$Type, fill=hamster054$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Drug") +
  guides(fill=FALSE) +
  theme_bw()
ggsave("antibioticsT054.pdf", width = 47, height = 40, units = c('cm'))

#####################################################################


#test oout if i can convert the dates to days post transplant
#import antibiotic master litst
antibioticsMaster = read_excel("antibioticsMaster.xlsx", sheet = 1)

#function to change first letter to upper case
firstup <- function(x) {
  substr(x, 1, 1) <- toupper(substr(x, 1, 1))
  x
}
#testing out with patient 1
antiBtest = read_excel("antiB001_test.xlsx", sheet = 1)
str(antiBtest)
antiBtest$Administered_dttm <- as_date(antiBtest$Administered_dttm)
antiBtest$Scheduled_dttm <- as_date(antiBtest$Scheduled_dttm)


x <- antiBtest$Administered_dttm
days <- yday(x) - 177 # so Jan 1 = day 0 
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiBtest_updated.csv")

#patient 1 
#import data file with days amended
antiBUp001 = read_excel("anitbiotic_progressfiles/antiBtest_updated.xlsx", sheet = 1) #import
antiBUp001$DrugDescription <-firstup(antiBUp001$DrugDescription) #change case
hamster001 <- merge(x = antiBUp001, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)


#patient 2 
#import data file with days amended

antiBtest = read_excel("antiB002.xlsx", sheet = 1)
antiBtest$Administered_dttm <- as_date(antiBtest$Administered_dttm)
antiBtest$Scheduled_dttm <- as_date(antiBtest$Scheduled_dttm)

x <- antiBtest$Administered_dttm
days <- yday(x) - 170 # transplant date is 19-06-2015 so 170 
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiB002_updated.csv")


antiBUp002 = read_excel("anitbiotic_progressfiles/antiB002_updated.xlsx", sheet = 1) #import
antiBUp002$DrugDescription <-firstup(antiBUp002$DrugDescription) #change case
hamster002 <- merge(x = antiBUp002, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)

#patient 3 
#import data file with days amended

antiBtest = read_excel("antiB003.xlsx", sheet = 1)
str(antiBtest)
antiBtest$Administered_dttm <- as_date(antiBtest$Administered_dttm)
antiBtest$Scheduled_dttm <- as_date(antiBtest$Scheduled_dttm)

x <- antiBtest$Administered_dttm
days <- yday(x) - 212 # transplant date is 31-07-2015 so 212 
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiB003_updated.csv")

antiBUp003 = read_excel("anitbiotic_progressfiles/antiB003_updated.xlsx", sheet = 1) #import
antiBUp003$DrugDescription <-firstup(antiBUp003$DrugDescription) #change case
hamster003 <- merge(x = antiBUp003, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)

#patient 4 
#import data file with days amended

antiBtest <- antiB004
  
x <- antiBtest$Administered_dttm
days <- yday(x) - 209 # transplant date is 28-07-2015 so 209
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiB004_updated.csv")

antiBUp004 = read_excel("anitbiotic_progressfiles/antiB004_updated.xlsx", sheet = 1) #import
antiBUp004$DrugDescription <-firstup(antiBUp004$DrugDescription) #change case
hamster004 <- merge(x = antiBUp004, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)

#patient 12 
#import data file with days amended

antiBtest <- antiB012

x <- antiBtest$Administered_dttm
days <- yday(x) - 246 # transplant date is 03-09-2015 so 246
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiB012_updated.csv")

antiBUp012 = read_excel("anitbiotic_progressfiles/antiB012_updated.xlsx", sheet = 1) #import
antiBUp012$DrugDescription <-firstup(antiBUp012$DrugDescription) #change case
hamster012 <- merge(x = antiBUp012, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)

#patient 14 
#import data file with days amended

antiBtest <- antiB014

x <- antiBtest$Administered_dttm
days <- yday(x) - 260 # transplant date is 17-09-2015 so 260
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiB014_updated.csv")

antiBUp014 = read_excel("anitbiotic_progressfiles/antiB014_updated.xlsx", sheet = 1) #import
antiBUp014$DrugDescription <-firstup(antiBUp014$DrugDescription) #change case
hamster014 <- merge(x = antiBUp014, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)

#patient 17
#import data file with days amended

antiBtest = read_excel("antiB017.xlsx", sheet = 1)
str(antiBtest)
antiBtest$Administered_dttm <- as_date(antiBtest$Administered_dttm)
antiBtest$Scheduled_dttm <- as_date(antiBtest$Scheduled_dttm)

x <- antiBtest$Administered_dttm
days <- yday(x) - 288 # transplant date is 15-10-2015 so 288 
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiB017_updated.csv")

antiBUp017 = read_excel("anitbiotic_progressfiles/antiB017_updated.xlsx", sheet = 1) #import
antiBUp017$DrugDescription <-firstup(antiBUp017$DrugDescription) #change case
hamster017 <- merge(x = antiBUp017, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)

#patient 19 
#import data file with days amended

antiBtest <- antiB019

x <- antiBtest$Administered_dttm
days <- yday(x) - 309 # transplant date is 05-11-2015 so 309
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiB019_updated.csv")

antiBUp019 = read_excel("anitbiotic_progressfiles/antiB019_updated.xlsx", sheet = 1) #import
antiBUp019$DrugDescription <-firstup(antiBUp019$DrugDescription) #change case
hamster019 <- merge(x = antiBUp019, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)

#patient 21 
#import data file with days amended

antiBtest <- antiB021

x <- antiBtest$Administered_dttm
days <- yday(x) - 315 # transplant date is 11-11-2015 so 315
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiB021_updated.csv")

antiBUp021 = read_excel("anitbiotic_progressfiles/antiB021_updated.xlsx", sheet = 1) #import
antiBUp021$DrugDescription <-firstup(antiBUp021$DrugDescription) #change case
hamster021 <- merge(x = antiBUp021, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)

#patient 28
#import data file with days amended

antiBtest = read_excel("antiB028.xlsx", sheet = 1)
str(antiBtest)
antiBtest$Administered_dttm <- as_date(antiBtest$Administered_dttm)
antiBtest$Scheduled_dttm <- as_date(antiBtest$Scheduled_dttm)

x <- antiBtest$Administered_dttm
days <- yday(x) - 356 # transplant date is 22-12-2015 so 356 
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiB028_updated.csv")

antiBUp028 = read_excel("anitbiotic_progressfiles/antiB028_updated.xlsx", sheet = 1) #import
antiBUp028$DrugDescription <-firstup(antiBUp028$DrugDescription) #change case
hamster028 <- merge(x = antiBUp028, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)

#patient 32
#import data file with days amended

antiBtest = read_excel("antiB032.xlsx", sheet = 1)
str(antiBtest)
antiBtest$Administered_dttm <- as_date(antiBtest$Administered_dttm)
antiBtest$Scheduled_dttm <- as_date(antiBtest$Scheduled_dttm)

x <- antiBtest$Administered_dttm
days <- yday(x) - 22 # transplant date is 22-01-2016 so 22 
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiB032_updated.csv")

antiBUp032 = read_excel("anitbiotic_progressfiles/antiB032_updated.xlsx", sheet = 1) #import
antiBUp032$DrugDescription <-firstup(antiBUp032$DrugDescription) #change case
hamster032 <- merge(x = antiBUp032, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)

#patient 41 
#import data file with days amended

antiBtest <- antiB041

x <- antiBtest$Administered_dttm
days <- yday(x) - 68 # transplant date is 08-03-2016 so 68 (leap year)
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiB041_updated.csv")

antiBUp041 = read_excel("anitbiotic_progressfiles/antiB041_updated.xlsx", sheet = 1) #import
antiBUp041$DrugDescription <-firstup(antiBUp041$DrugDescription) #change case
hamster041 <- merge(x = antiBUp041, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)

#patient 42 
#import data file with days amended

antiBtest <- antiB042

x <- antiBtest$Administered_dttm
days <- yday(x) - 78 # transplant date is 18-03-2016 so 78
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiB042_updated.csv")

antiBUp042 = read_excel("anitbiotic_progressfiles/antiB042_updated.xlsx", sheet = 1) #import
antiBUp042$DrugDescription <-firstup(antiBUp042$DrugDescription) #change case
hamster042 <- merge(x = antiBUp042, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)

#patient 46 
#import data file with days amended

antiBtest <- antiB046

x <- antiBtest$Administered_dttm
days <- yday(x) - 76 # transplant date is 16-03-2016 so 76
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiB046_updated.csv")

antiBUp046 = read_excel("anitbiotic_progressfiles/antiB046_updated.xlsx", sheet = 1) #import
antiBUp046$DrugDescription <-firstup(antiBUp046$DrugDescription) #change case
hamster046 <- merge(x = antiBUp046, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)


#patient 47
#import data file with days amended

antiBtest = read_excel("antiB047.xlsx", sheet = 1)
str(antiBtest)
antiBtest$Administered_dttm <- as_date(antiBtest$Administered_dttm)
antiBtest$Scheduled_dttm <- as_date(antiBtest$Scheduled_dttm)

x <- antiBtest$Administered_dttm
days <- yday(x) - 78 # transplant date is 18-03-2016 so 78
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiB047_updated.csv")

antiBUp047 = read_excel("anitbiotic_progressfiles/antiB047_updated.xlsx", sheet = 1) #import
antiBUp047$DrugDescription <-firstup(antiBUp047$DrugDescription) #change case
hamster047 <- merge(x = antiBUp047, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)

#patient 48
#import data file with days amended

antiBtest = read_excel("antiB048.xlsx", sheet = 1)
str(antiBtest)
antiBtest$Administered_dttm <- as_date(antiBtest$Administered_dttm)
antiBtest$Scheduled_dttm <- as_date(antiBtest$Scheduled_dttm)

x <- antiBtest$Administered_dttm
days <- yday(x) - 118 # transplant date is 27-04-2016 so 118 
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiB048_updated.csv")

antiBUp048 = read_excel("anitbiotic_progressfiles/antiB048_updated.xlsx", sheet = 1) #import
antiBUp048$DrugDescription <-firstup(antiBUp048$DrugDescription) #change case
hamster048 <- merge(x = antiBUp048, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)

#patient 52
#import data file with days amended

antiBtest = read_excel("antiB052.xlsx", sheet = 1)
str(antiBtest)
antiBtest$Administered_dttm <- as_date(antiBtest$Administered_dttm)
antiBtest$Scheduled_dttm <- as_date(antiBtest$Scheduled_dttm)

x <- antiBtest$Administered_dttm
days <- yday(x) - 120 # transplant date is 29-04-2016 so 120 
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiB052_updated.csv")

antiBUp052 = read_excel("anitbiotic_progressfiles/antiB052_updated.xlsx", sheet = 1) #import
antiBUp052$DrugDescription <-firstup(antiBUp052$DrugDescription) #change case
hamster052 <- merge(x = antiBUp052, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)

#patient 54 
#import data file with days amended

antiBtest <- antiB054

x <- antiBtest$Administered_dttm
days <- yday(x) - 125 # transplant date is 04-05-2016 so 125
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiB054_updated.csv")

antiBUp054 = read_excel("anitbiotic_progressfiles/antiB054_updated.xlsx", sheet = 1) #import
antiBUp054$DrugDescription <-firstup(antiBUp054$DrugDescription) #change case
hamster054 <- merge(x = antiBUp054, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)

#patient 05
#import data file with days amended

antiBtest = read_excel("antiB005.xlsx", sheet = 1)
antiBtest$Administered_dttm <- as_date(antiBtest$Administered_dttm)
antiBtest$Scheduled_dttm <- as_date(antiBtest$Scheduled_dttm)

x <- antiBtest$Administered_dttm
days <- yday(x) - 230 # transplant date is 18-08-2015 so 230 
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiB005_updated.csv")


antiBUp005 = read_excel("anitbiotic_progressfiles/antiB005_updated.xlsx", sheet = 1) #import
antiBUp005$DrugDescription <-firstup(antiBUp005$DrugDescription) #change case
hamster005 <- merge(x = antiBUp005, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)

#patient 16
#import data file with days amended

antiBtest = read_excel("antiB016.xlsx", sheet = 1)
antiBtest$Administered_dttm <- as_date(antiBtest$Administered_dttm)
antiBtest$Scheduled_dttm <- as_date(antiBtest$Scheduled_dttm)

x <- antiBtest$Administered_dttm
days <- yday(x) - 273 # transplant date is 30-09-2015 so 273 
antiBtest$Administered_dttm <- days
write.csv(antiBtest, file = "antiB016_updated.csv")


antiBUp016 = read_excel("anitbiotic_progressfiles/antiB016_updated.xlsx", sheet = 1) #import
antiBUp016$DrugDescription <-firstup(antiBUp016$DrugDescription) #change case
hamster016 <- merge(x = antiBUp016, y = antibioticsMaster, by = "DrugDescription", all.x = TRUE)

