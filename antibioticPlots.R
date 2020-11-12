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

#####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 001

p = ggplot(hamster001, aes(x=hamster001$Administered_dttm, y=reorder(hamster001$DrugDescription, desc(hamster001$DrugDescription)), color=hamster001$Type, fill=hamster001$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG001 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = -8, 
                  color = "black", size=1)
p <- p + geom_vline(xintercept = 12, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 27, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 41, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 104, 
                    color = "black", size=1)

p

ggsave("antibioticsNice001.pdf", width = 47, height = 40, units = c('cm'))


#####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 002

p = ggplot(hamster002, aes(x=hamster002$Administered_dttm, y=reorder(hamster002$DrugDescription, desc(hamster002$DrugDescription)), color=hamster002$Type, fill=hamster002$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG002 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = 10, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 26, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 32, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 67, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 69, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 90, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 207, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 222, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 304, 
                    color = "black", size=1)

p

ggsave("antibioticsNice002.pdf", width = 47, height = 40, units = c('cm'))

#####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 003

p = ggplot(hamster003, aes(x=hamster003$Administered_dttm, y=reorder(hamster003$DrugDescription, desc(hamster003$DrugDescription)), color=hamster003$Type, fill=hamster003$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG003 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = 0, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 32, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 180, 
                    color = "black", size=1)

p

ggsave("antibioticsNice003.pdf", width = 47, height = 40, units = c('cm'))

#####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 004

p = ggplot(hamster004, aes(x=hamster004$Administered_dttm, y=reorder(hamster004$DrugDescription, desc(hamster004$DrugDescription)), color=hamster004$Type, fill=hamster004$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG004 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = 0, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 28, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 161, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 210, 
                    color = "black", size=1)

p

ggsave("antibioticsNice004.pdf", width = 47, height = 40, units = c('cm'))

#####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 012

p = ggplot(hamster012, aes(x=hamster012$Administered_dttm, y=reorder(hamster012$DrugDescription, desc(hamster012$DrugDescription)), color=hamster012$Type, fill=hamster012$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG012 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = -7, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 1, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 7, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 25, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 36, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 62, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 89, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 117, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 236, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 271, 
                    color = "black", size=1)

p

ggsave("antibioticsNice012.pdf", width = 47, height = 40, units = c('cm'))

#####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 014

p = ggplot(hamster014, aes(x=hamster014$Administered_dttm, y=reorder(hamster014$DrugDescription, desc(hamster014$DrugDescription)), color=hamster014$Type, fill=hamster014$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG014 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = 18, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 19, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 34, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 55, 
                    color = "black", size=1)

p

ggsave("antibioticsNice014.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 017

p = ggplot(hamster017, aes(x=hamster017$Administered_dttm, y=reorder(hamster017$DrugDescription, desc(hamster017$DrugDescription)), color=hamster017$Type, fill=hamster017$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG017 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = -6, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 1, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 35, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 147, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 180, 
                    color = "black", size=1)

p

ggsave("antibioticsNice017.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 019

p = ggplot(hamster019, aes(x=hamster019$Administered_dttm, y=reorder(hamster019$DrugDescription, desc(hamster019$DrugDescription)), color=hamster019$Type, fill=hamster019$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG019 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = 39, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 61, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 82, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 370, 
                    color = "black", size=1)

p

ggsave("antibioticsNice019.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 021

p = ggplot(hamster021, aes(x=hamster021$Administered_dttm, y=reorder(hamster021$DrugDescription, desc(hamster021$DrugDescription)), color=hamster021$Type, fill=hamster021$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG021 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = -7, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 0, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 16, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 23, 
                    color = "black", size=1)

p

ggsave("antibioticsNice021.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 028

p = ggplot(hamster028, aes(x=hamster028$Administered_dttm, y=reorder(hamster028$DrugDescription, desc(hamster028$DrugDescription)), color=hamster028$Type, fill=hamster028$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG028 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = -13, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 1, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 41, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 65, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 281, 
                    color = "black", size=1)

p

ggsave("antibioticsNice028.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 032

p = ggplot(hamster032, aes(x=hamster032$Administered_dttm, y=reorder(hamster032$DrugDescription, desc(hamster032$DrugDescription)), color=hamster032$Type, fill=hamster032$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG032 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = -7, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = -2, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 0, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 42, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 69, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 96, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 98, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 142, 
                    color = "black", size=1)

p

ggsave("antibioticsNice032.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 041

p = ggplot(hamster041, aes(x=hamster041$Administered_dttm, y=reorder(hamster041$DrugDescription, desc(hamster041$DrugDescription)), color=hamster041$Type, fill=hamster041$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG041 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = 1, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 16, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 37, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 58, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 120, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 134, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 150, 
                    color = "black", size=1)

p

ggsave("antibioticsNice041.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 042

p = ggplot(hamster042, aes(x=hamster042$Administered_dttm, y=reorder(hamster042$DrugDescription, desc(hamster042$DrugDescription)), color=hamster042$Type, fill=hamster042$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG042 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = 12, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 20, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 34, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 88, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 158, 
                    color = "black", size=1)
p

ggsave("antibioticsNice042.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 046

p = ggplot(hamster046, aes(x=hamster046$Administered_dttm, y=reorder(hamster046$DrugDescription, desc(hamster046$DrugDescription)), color=hamster046$Type, fill=hamster046$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG046 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = -7, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 19, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 37, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 62, 
                    color = "black", size=1)

p

ggsave("antibioticsNice046.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 047

p = ggplot(hamster047, aes(x=hamster047$Administered_dttm, y=reorder(hamster047$DrugDescription, desc(hamster047$DrugDescription)), color=hamster047$Type, fill=hamster047$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG047 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = -8, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 13, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 25, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 31, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 35, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 60, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 90, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 180, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 242, 
                    color = "black", size=1)

p

ggsave("antibioticsNice047.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 048

p = ggplot(hamster048, aes(x=hamster048$Administered_dttm, y=reorder(hamster048$DrugDescription, desc(hamster048$DrugDescription)), color=hamster048$Type, fill=hamster048$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG048 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = 7, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 9, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 153, 
                    color = "black", size=1)
p

ggsave("antibioticsNice048.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 052

p = ggplot(hamster052, aes(x=hamster052$Administered_dttm, y=reorder(hamster052$DrugDescription, desc(hamster052$DrugDescription)), color=hamster052$Type, fill=hamster052$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG052 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = 0, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 7, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 62, 
                    color = "black", size=1)
p

ggsave("antibioticsNice052.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 054

p = ggplot(hamster054, aes(x=hamster054$Administered_dttm, y=reorder(hamster054$DrugDescription, desc(hamster054$DrugDescription)), color=hamster054$Type, fill=hamster054$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG054 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = -7, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 6, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 28, 
                    color = "black", size=1)
p

ggsave("antibioticsNice054.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 005

p = ggplot(hamster005, aes(x=hamster005$Administered_dttm, y=reorder(hamster005$DrugDescription, desc(hamster005$DrugDescription)), color=hamster005$Type, fill=hamster005$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG005 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = 34, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept =43, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 44, 
                    color = "black", size=1)
p

ggsave("antibioticsNice005.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 016

p = ggplot(hamster016, aes(x=hamster016$Administered_dttm, y=reorder(hamster016$DrugDescription, desc(hamster016$DrugDescription)), color=hamster016$Type, fill=hamster016$Type)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG016 Medications", x = "Days post transplant", y = "Medications", color = "Type of medication") +
  scale_color_manual(labels = c("Antibiotic", "Antifungal", "Antiviral", "Other"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)

p <- p + geom_vline(xintercept = 8, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept =35, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 220, 
                    color = "black", size=1)
p

ggsave("antibioticsNice016.pdf", width = 47, height = 40, units = c('cm'))