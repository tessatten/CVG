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

# reimport antibiotic master litst
antibioticsMaster = read_excel("antibioticsMaster.xlsx", sheet = 1)
#this includes antibiotic info

range(the20$Gini_coefficient)

#####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 001

hamster001 <- hamster001 %>% filter(Type == "Antibiotic")
A1 = ggplot(hamster001, aes(x=hamster001$Administered_dttm, y=reorder(hamster001$DrugDescription, desc(hamster001$Target)), color=hamster001$Target, fill=hamster001$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG001 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE) + theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
    )+xlim(-9, 104)

A1 <- A1 + geom_vline(xintercept = -8, 
                    color = "black", size=1)
A1 <- A1 + geom_vline(xintercept = 12, 
                    color = "black", size=1)
A1 <- A1 + geom_vline(xintercept = 27, 
                    color = "black", size=1)
A1 <- A1 + geom_vline(xintercept = 41, 
                    color = "black", size=1)
A1 <- A1 + geom_vline(xintercept = 104, 
                    color = "black", size=1)
A1 <- A1 + geom_vline(xintercept = 14, 
                    color = "red", size=1)

A1

ggsave("antibiotics001.pdf", width = 47, height = 40, units = c('cm'))

#####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 002
hamster002 <- hamster002 %>% filter(Type == "Antibiotic")
A2 = ggplot(hamster002, aes(x=hamster002$Administered_dttm, y=reorder(hamster002$DrugDescription, desc(hamster002$Target)), color=hamster002$Target, fill=hamster002$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG002 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+xlim(	-39, 304)

A2 <- A2 + geom_vline(xintercept = 10, 
                    color = "black", size=1)
A2 <- A2 + geom_vline(xintercept = 26, 
                    color = "black", size=1)
A2 <- A2 + geom_vline(xintercept = 32, 
                    color = "black", size=1)
A2 <- A2 + geom_vline(xintercept = 67, 
                    color = "black", size=1)
A2 <- A2 + geom_vline(xintercept = 69, 
                    color = "black", size=1)
A2 <- A2 + geom_vline(xintercept = 90, 
                    color = "black", size=1)
A2 <- A2 + geom_vline(xintercept = 207, 
                    color = "black", size=1)
A2 <- A2 + geom_vline(xintercept = 222, 
                    color = "black", size=1)
A2 <- A2 + geom_vline(xintercept = 304, 
                    color = "black", size=1)
A2 <- A2 + geom_vline(xintercept = 20, 
                    color = "red", size=1)

A2

ggsave("antibioticsNiceAnti002.pdf", width = 47, height = 40, units = c('cm'))

#####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 003

hamster003 <- hamster003 %>% filter(Type == "Antibiotic")
p = ggplot(hamster003, aes(x=hamster003$Administered_dttm, y=reorder(hamster003$DrugDescription, desc(hamster003$Target)), color=hamster003$Target, fill=hamster003$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG003 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+xlim(	-24, 180)

p <- p + geom_vline(xintercept = 0, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 32, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 180, 
                    color = "black", size=1)
A3 <- p + geom_vline(xintercept = 26, 
                    color = "red", size=1)

A3

ggsave("antibioticsNiceAnti003.pdf", width = 47, height = 40, units = c('cm'))

#####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 004

hamster004 <- hamster004 %>% filter(Type == "Antibiotic")
p = ggplot(hamster004, aes(x=hamster004$Administered_dttm, y=reorder(hamster004$DrugDescription, desc(hamster004$Target)), color=hamster004$Target, fill=hamster004$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG004 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+xlim(-31, 210)

p <- p + geom_vline(xintercept = 0, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 28, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 161, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 210, 
                    color = "black", size=1)
A4 <- p + geom_vline(xintercept = 10, 
                    color = "red", size=1)

A4

ggsave("antibioticsNiceAnti004.pdf", width = 47, height = 40, units = c('cm'))

#####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 012

hamster012 <- hamster012 %>% filter(Type == "Antibiotic")
p = ggplot(hamster012, aes(x=hamster012$Administered_dttm, y=reorder(hamster012$DrugDescription, desc(hamster012$Target)), color=hamster012$Target, fill=hamster012$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG012 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+xlim(-38, 271)

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
A12 <- p + geom_vline(xintercept = 9, 
                    color = "red", size=1)

A12

ggsave("antibioticsNiceAnti012.pdf", width = 47, height = 40, units = c('cm'))

#####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 014

hamster014 <- hamster014 %>% filter(Type == "Antibiotic")
p = ggplot(hamster014, aes(x=hamster014$Administered_dttm, y=reorder(hamster014$DrugDescription, desc(hamster014$Target)), color=hamster014$Target, fill=hamster014$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG014 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+xlim(-38, 55)

p <- p + geom_vline(xintercept = 18, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 19, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 34, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 55, 
                    color = "black", size=1)
A14 <- p + geom_vline(xintercept = 13, 
                    color = "red", size=1)

A14

ggsave("antibioticsNiceAnti014.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 017

hamster017 <- hamster017 %>% filter(Type == "Antibiotic")
p = ggplot(hamster017, aes(x=hamster017$Administered_dttm, y=reorder(hamster017$DrugDescription, desc(hamster017$Target)), color=hamster017$Target, fill=hamster017$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG017 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+xlim(	-9, 180)

p <- p + geom_vline(xintercept = 1, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 35, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 180, 
                    color = "black", size=1)
A17 <- p + geom_vline(xintercept = 27, 
                    color = "red", size=1)


A17

ggsave("antibioticsNiceAnti017.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 019

hamster019 <- hamster019 %>% filter(Type == "Antibiotic")
p = ggplot(hamster019, aes(x=hamster019$Administered_dttm, y=reorder(hamster019$DrugDescription, desc(hamster019$Target)), color=hamster019$Target, fill=hamster019$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG019 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+xlim(	-38, 370)

p <- p + geom_vline(xintercept = 39, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 61, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 82, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 370, 
                    color = "black", size=1)
A19 <- p + geom_vline(xintercept = 43, 
                    color = "red", size=1)

A19

ggsave("antibioticsNiceAnti019.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 021

hamster021 <- hamster021 %>% filter(Type == "Antibiotic")
p = ggplot(hamster021, aes(x=hamster021$Administered_dttm, y=reorder(hamster021$DrugDescription, desc(hamster021$Target)), color=hamster021$Target, fill=hamster021$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG021 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+xlim(-28, 23)

p <- p + geom_vline(xintercept = -7, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 0, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 16, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 23, 
                    color = "black", size=1)
A21 <- p + geom_vline(xintercept = 25, 
                    color = "red", size=1)

A21

ggsave("antibioticsNiceAnti021.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 028

hamster028 <- hamster028 %>% filter(Type == "Antibiotic")
p = ggplot(hamster028, aes(x=hamster028$Administered_dttm, y=reorder(hamster028$DrugDescription, desc(hamster028$Target)), color=hamster028$Target, fill=hamster028$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG028 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+xlim(-33, 281)

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
A28 <- p + geom_vline(xintercept = 13, 
                    color = "red", size=1)

A28

ggsave("antibioticsNiceAnti028.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 032

hamster032 <- hamster032 %>% filter(Type == "Antibiotic")
p = ggplot(hamster032, aes(x=hamster032$Administered_dttm, y=reorder(hamster032$DrugDescription, desc(hamster032$Target)), color=hamster032$Target, fill=hamster032$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG032 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+xlim(-30, 142)

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
A32 <- p + geom_vline(xintercept = 21, 
                    color = "red", size=1)

A32

ggsave("antibioticsNiceAnti032.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 041

hamster041 <- hamster041 %>% filter(Type == "Antibiotic")
p = ggplot(hamster041, aes(x=hamster041$Administered_dttm, y=reorder(hamster041$DrugDescription, desc(hamster041$Target)), color=hamster041$Target, fill=hamster041$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG041 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+xlim(-10, 150)

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
A41 <- p + geom_vline(xintercept = 16, 
                    color = "red", size=1)

A41

ggsave("antibioticsNiceAnti041.pdf", width = 47, height = 40, units = c('cm'))

#plotting the drugs given, and planning to overlay the sample time points
#patient 042

hamster042 <- hamster042 %>% filter(Type == "Antibiotic")
p = ggplot(hamster042, aes(x=hamster042$Administered_dttm, y=reorder(hamster042$DrugDescription, desc(hamster042$Target)), color=hamster042$Target, fill=hamster042$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG042 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+xlim(-30, 158)

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
A42 <- p + geom_vline(xintercept = 26, 
                    color = "red", size=1)

A42

ggsave("antibioticsNiceAnti042.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 046

hamster046 <- hamster046 %>% filter(Type == "Antibiotic")
p = ggplot(hamster046, aes(x=hamster046$Administered_dttm, y=reorder(hamster046$DrugDescription, desc(hamster046$Target)), color=hamster046$Target, fill=hamster046$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG046 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+xlim(-21, 62)

p <- p + geom_vline(xintercept = -7, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 19, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 37, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 62, 
                    color = "black", size=1)
A46 <- p + geom_vline(xintercept = 11, 
                    color = "red", size=1)

A46

ggsave("antibioticsNiceAnti046.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 047

hamster047 <- hamster047 %>% filter(Type == "Antibiotic")
p = ggplot(hamster047, aes(x=hamster047$Administered_dttm, y=reorder(hamster047$DrugDescription, desc(hamster047$Target)), color=hamster047$Target, fill=hamster047$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG047 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+xlim(-9, 242)

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
A47 <- p + geom_vline(xintercept = 24, 
                    color = "red", size=1)

A47

ggsave("antibioticsNiceAnti047.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 048

hamster048 <- hamster048 %>% filter(Type == "Antibiotic")
p = ggplot(hamster048, aes(x=hamster048$Administered_dttm, y=reorder(hamster048$DrugDescription, desc(hamster048$Target)), color=hamster048$Target, fill=hamster048$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG048 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+xlim(-74, 153)

p <- p + geom_vline(xintercept = 7, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 9, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 153, 
                    color = "black", size=1)
A48 <- p + geom_vline(xintercept = 18, 
                    color = "red", size=1)
A48

ggsave("antibioticsNiceAnti048.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 052

hamster052 <- hamster052 %>% filter(Type == "Antibiotic")
p = ggplot(hamster052, aes(x=hamster052$Administered_dttm, y=reorder(hamster052$DrugDescription, desc(hamster052$Target)), color=hamster052$Target, fill=hamster052$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG052 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+xlim(-11, 62)

p <- p + geom_vline(xintercept = 0, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 7, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 62, 
                    color = "black", size=1)
A52 <- p + geom_vline(xintercept = 26, 
                    color = "red", size=1)
A52

ggsave("antibioticsNiceAnti052.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 054

hamster054 <- hamster054 %>% filter(Type == "Antibiotic")
p = ggplot(hamster054, aes(x=hamster054$Administered_dttm, y=reorder(hamster054$DrugDescription, desc(hamster054$Target)), color=hamster054$Target, fill=hamster054$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG054 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+xlim(-38, 28)

p <- p + geom_vline(xintercept = -7, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 6, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 28, 
                    color = "black", size=1)
A54 <- p + geom_vline(xintercept = 20, 
                    color = "red", size=1)
A54

ggsave("antibioticsNiceAnti054.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 005

hamster005 <- hamster005 %>% filter(Type == "Antibiotic")
p = ggplot(hamster005, aes(x=hamster005$Administered_dttm, y=reorder(hamster005$DrugDescription, desc(hamster005$Target)), color=hamster005$Target, fill=hamster005$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG005 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+xlim(-216, 44)

p <- p + geom_vline(xintercept = 34, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept =43, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 44, 
                    color = "black", size=1)
A5 <- p + geom_vline(xintercept = 21, 
                    color = "red", size=1)
A5

ggsave("antibioticsNiceAnti005.pdf", width = 47, height = 40, units = c('cm'))

####################################################################
#plotting the drugs given, and planning to overlay the sample time points
#patient 016

hamster016 <- hamster016 %>% filter(Type == "Antibiotic")
p = ggplot(hamster016, aes(x=hamster016$Administered_dttm, y=reorder(hamster016$DrugDescription, desc(hamster016$Target)), color=hamster016$Target, fill=hamster016$Target)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) + 
  geom_line() + labs(title = "CVG016 Antibiotics", x = "Days from transplant", y = "Antibiotic", color = "Primary antibiotic target") +
  scale_color_manual(labels = c("Broad spectrum", "Gram negative", "Gram positive", "Mycobacteria"), values = c("#E77EA1", "#5FC27D", "#9E9FD7", "#23BAC5")) +
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+xlim(-138, 220)

p <- p + geom_vline(xintercept = 8, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept =35, 
                    color = "black", size=1)
p <- p + geom_vline(xintercept = 220, 
                    color = "black", size=1)
A16 <- p + geom_vline(xintercept = 15, 
                    color = "red", size=1)
A16

ggsave("antibioticsNiceAnti016.pdf", width = 47, height = 40, units = c('cm'))
