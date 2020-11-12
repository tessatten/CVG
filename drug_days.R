install.packages("psych")
library("psych")

#count drug days

#patient 1
tempor <- hamster001 %>% filter(Type == "Antibiotic")
rabbit001 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit001$Freq <- ifelse(rabbit001$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit001 <- subset(rabbit001, rabbit001$Freq >0) #remove null columns

sum(rabbit001$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit001Match <- as.character(rabbit001$Var2)
rabbit001Match <- base::unique(rabbit001Match) #make directory of days

rabbit001Match

rabbit001Match[1:33]

range = subset(rabbit001, rabbit001$Var2 %in% rabbit001Match[1:33]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam


#patient 2
tempor <- hamster002 %>% filter(Type == "Antibiotic")
rabbit002 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit002$Freq <- ifelse(rabbit002$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit002 <- subset(rabbit002, rabbit002$Freq >0) #remove null columns

sum(rabbit002$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit002Match <- as.character(rabbit002$Var2)
rabbit002Match <- base::unique(rabbit002Match) #make directory of days

rabbit002Match

rabbit002Match[1:33]

range = subset(rabbit002, rabbit002$Var2 %in% rabbit002Match[1:33]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam

#patient 3
tempor <- hamster003 %>% filter(Type == "Antibiotic")
rabbit003 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit003$Freq <- ifelse(rabbit003$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit003 <- subset(rabbit003, rabbit003$Freq >0) #remove null columns

sum(rabbit003$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit003Match <- as.character(rabbit003$Var2)
rabbit003Match <- base::unique(rabbit003Match) #make directory of days

rabbit003Match

rabbit003Match[1:48]

range = subset(rabbit003, rabbit003$Var2 %in% rabbit003Match[1:48]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam

#patient 4
tempor <- hamster004 %>% filter(Type == "Antibiotic")
rabbit004 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit004$Freq <- ifelse(rabbit004$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit004 <- subset(rabbit004, rabbit004$Freq >0) #remove null columns

sum(rabbit004$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit004Match <- as.character(rabbit004$Var2)
rabbit004Match <- base::unique(rabbit004Match) #make directory of days

rabbit004Match

rabbit004Match[1:31]

range = subset(rabbit004, rabbit004$Var2 %in% rabbit004Match[1:31]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam

#patient 5
tempor <- hamster005 %>% filter(Type == "Antibiotic")
rabbit005 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit005$Freq <- ifelse(rabbit005$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit005 <- subset(rabbit005, rabbit005$Freq >0) #remove null columns

sum(rabbit005$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit005Match <- as.character(rabbit005$Var2)
rabbit005Match <- base::unique(rabbit005Match) #make directory of days

rabbit005Match

rabbit005Match[1:82]

range = subset(rabbit005, rabbit005$Var2 %in% rabbit005Match[1:82]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam

#patient 12
tempor <- hamster012 %>% filter(Type == "Antibiotic")
rabbit012 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit012$Freq <- ifelse(rabbit012$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit012 <- subset(rabbit012, rabbit012$Freq >0) #remove null columns

sum(rabbit012$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit012Match <- as.character(rabbit012$Var2)
rabbit012Match <- base::unique(rabbit012Match) #make directory of days

rabbit012Match

rabbit012Match[1:49]

range = subset(rabbit012, rabbit012$Var2 %in% rabbit012Match[1:49]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam

#patient 14
tempor <- hamster014 %>% filter(Type == "Antibiotic")
rabbit014 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit014$Freq <- ifelse(rabbit014$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit014 <- subset(rabbit014, rabbit014$Freq >0) #remove null columns

sum(rabbit014$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit014Match <- as.character(rabbit014$Var2)
rabbit014Match <- base::unique(rabbit014Match) #make directory of days

rabbit014Match

rabbit014Match[1:44]

range = subset(rabbit014, rabbit014$Var2 %in% rabbit014Match[1:44]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam

#patient 16
tempor <- hamster016 %>% filter(Type == "Antibiotic")
rabbit016 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit016$Freq <- ifelse(rabbit016$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit016 <- subset(rabbit016, rabbit016$Freq >0) #remove null columns

sum(rabbit016$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit016Match <- as.character(rabbit016$Var2)
rabbit016Match <- base::unique(rabbit016Match) #make directory of days

rabbit016Match

rabbit016Match[1:70]

range = subset(rabbit016, rabbit016$Var2 %in% rabbit016Match[1:70]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam

#patient 17
tempor <- hamster017 %>% filter(Type == "Antibiotic")
rabbit017 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit017$Freq <- ifelse(rabbit017$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit017 <- subset(rabbit017, rabbit017$Freq >0) #remove null columns

sum(rabbit017$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit017Match <- as.character(rabbit017$Var2)
rabbit017Match <- base::unique(rabbit017Match) #make directory of days

rabbit017Match

rabbit017Match[1:33]

range = subset(rabbit017, rabbit017$Var2 %in% rabbit017Match[1:33]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam

#patient 19
tempor <- hamster019 %>% filter(Type == "Antibiotic")
rabbit019 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit019$Freq <- ifelse(rabbit019$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit019 <- subset(rabbit019, rabbit019$Freq >0) #remove null columns

sum(rabbit019$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit019Match <- as.character(rabbit019$Var2)
rabbit019Match <- base::unique(rabbit019Match) #make directory of days

rabbit019Match

rabbit019Match[1:38]

range = subset(rabbit019, rabbit019$Var2 %in% rabbit019Match[1:38]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam

#patient 21
tempor <- hamster021 %>% filter(Type == "Antibiotic")
rabbit021 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit021$Freq <- ifelse(rabbit021$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit021 <- subset(rabbit021, rabbit021$Freq >0) #remove null columns

sum(rabbit021$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit021Match <- as.character(rabbit021$Var2)
rabbit021Match <- base::unique(rabbit021Match) #make directory of days

rabbit021Match

rabbit021Match[1:32]

range = subset(rabbit021, rabbit021$Var2 %in% rabbit021Match[1:32]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam

#patient 28
tempor <- hamster028 %>% filter(Type == "Antibiotic")
rabbit028 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit028$Freq <- ifelse(rabbit028$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit028 <- subset(rabbit028, rabbit028$Freq >0) #remove null columns

sum(rabbit028$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit028Match <- as.character(rabbit028$Var2)
rabbit028Match <- base::unique(rabbit028Match) #make directory of days

rabbit028Match

rabbit028Match[1:43]

range = subset(rabbit028, rabbit028$Var2 %in% rabbit028Match[1:43]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam


#patient 32
tempor <- hamster032 %>% filter(Type == "Antibiotic")
rabbit032 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit032$Freq <- ifelse(rabbit032$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit032 <- subset(rabbit032, rabbit032$Freq >0) #remove null columns

sum(rabbit032$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit032Match <- as.character(rabbit032$Var2)
rabbit032Match <- base::unique(rabbit032Match) #make directory of days

rabbit032Match

rabbit032Match[1:34]

range = subset(rabbit032, rabbit032$Var2 %in% rabbit032Match[1:34]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam

#patient 41
tempor <- hamster041 %>% filter(Type == "Antibiotic")
rabbit041 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit041$Freq <- ifelse(rabbit041$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit041 <- subset(rabbit041, rabbit041$Freq >0) #remove null columns

sum(rabbit041$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit041Match <- as.character(rabbit041$Var2)
rabbit041Match <- base::unique(rabbit041Match) #make directory of days

rabbit041Match

rabbit041Match[1:73]

range = subset(rabbit041, rabbit041$Var2 %in% rabbit041Match[1:73]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam

#patient 42
tempor <- hamster042 %>% filter(Type == "Antibiotic")
rabbit042 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit042$Freq <- ifelse(rabbit042$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit042 <- subset(rabbit042, rabbit042$Freq >0) #remove null columns

sum(rabbit042$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit042Match <- as.character(rabbit042$Var2)
rabbit042Match <- base::unique(rabbit042Match) #make directory of days

rabbit042Match

rabbit042Match[1:45]

range = subset(rabbit042, rabbit042$Var2 %in% rabbit042Match[1:45]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam



#patient 46
tempor <- hamster046 %>% filter(Type == "Antibiotic")
rabbit046 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit046$Freq <- ifelse(rabbit046$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit046 <- subset(rabbit046, rabbit046$Freq >0) #remove null columns

sum(rabbit046$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit046Match <- as.character(rabbit046$Var2)
rabbit046Match <- base::unique(rabbit046Match) #make directory of days

rabbit046Match

rabbit046Match[1:45]

range = subset(rabbit046, rabbit046$Var2 %in% rabbit046Match[1:59]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam

#patient 47
tempor <- hamster047 %>% filter(Type == "Antibiotic")
rabbit047 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit047$Freq <- ifelse(rabbit047$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit047 <- subset(rabbit047, rabbit047$Freq >0) #remove null columns

sum(rabbit047$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit047Match <- as.character(rabbit047$Var2)
rabbit047Match <- base::unique(rabbit047Match) #make directory of days

rabbit047Match

rabbit047Match[1:25]

range = subset(rabbit047, rabbit047$Var2 %in% rabbit047Match[1:25]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam

#patient 48
tempor <- hamster048 %>% filter(Type == "Antibiotic")
rabbit048 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit048$Freq <- ifelse(rabbit048$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit048 <- subset(rabbit048, rabbit048$Freq >0) #remove null columns

sum(rabbit048$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit048Match <- as.character(rabbit048$Var2)
rabbit048Match <- base::unique(rabbit048Match) #make directory of days

rabbit048Match

rabbit048Match[1:48]

range = subset(rabbit048, rabbit048$Var2 %in% rabbit048Match[1:48]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam


#patient 52
tempor <- hamster052 %>% filter(Type == "Antibiotic")
rabbit052 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit052$Freq <- ifelse(rabbit052$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit052 <- subset(rabbit052, rabbit052$Freq >0) #remove null columns

sum(rabbit052$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit052Match <- as.character(rabbit052$Var2)
rabbit052Match <- base::unique(rabbit052Match) #make directory of days

rabbit052Match

rabbit052Match[1:28]

range = subset(rabbit052, rabbit052$Var2 %in% rabbit052Match[1:28]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam

#patient 54
tempor <- hamster054 %>% filter(Type == "Antibiotic")
rabbit054 <- as.data.frame(table(tempor$DrugDescription, tempor$Administered_dttm)) #extract days and and doses

rabbit054$Freq <- ifelse(rabbit054$Freq >= 1, 1, 0) # turn multpli day dises into one

rabbit054 <- subset(rabbit054, rabbit054$Freq >0) #remove null columns

sum(rabbit054$Var1 == "Aciclovir") # test - how many days on acuclovir

rabbit054Match <- as.character(rabbit054$Var2)
rabbit054Match <- base::unique(rabbit054Match) #make directory of days

rabbit054Match

rabbit054Match[1:28]

range = subset(rabbit054, rabbit054$Var2 %in% rabbit054Match[1:28]) # set day  range e.g. -21 to 40
sum(range$Freq)
sum(range$Var1 == "Clindamycin") # test - how many days on Clindamycin
sum(range$Var1 == "Meropenem") # test - how many days on Meropenem
sum(range$Var1 == "Metronidazole") # test - how many days on Metronidazole
sum(range$Var1 == "Piperacillin/Tazobactam") # test - how many days on Piperacillin/Tazobactam


###################################################3
#here a mann whitney

aicbiot = read.csv(file = "drugs_and_days.csv", stringsAsFactors = FALSE)

low = subset(aicbiot, GvHD.1 == "Low")
mod = subset(aicbiot, GvHD.1 == "Moderate")
some = subset(aicbiot, GvHD.2 == "Some")
none = subset(aicbiot, GvHD.2 == "None")


wilcox.test(low$Total.drug.days,mod$Total.drug.days,  correct=FALSE) #nope
wilcox.test(low$Meropenem,mod$Meropenem, correct=FALSE) #nope
wilcox.test(low$Metronidazole,mod$Metronidazole, correct=FALSE) #nope
wilcox.test(low$Pip.taz,mod$Pip.taz, correct=FALSE) #nope
wilcox.test(low$Anti.anaerobic,mod$Anti.anaerobic, correct=FALSE) #nope

wilcox.test(some$Total.drug.days,none$Total.drug.days,  correct=FALSE) #nope
wilcox.test(some$Meropenem,none$Meropenem, correct=FALSE) #nope
wilcox.test(some$Metronidazole,none$Metronidazole, correct=FALSE) #nope
wilcox.test(some$Pip.taz,none$Pip.taz, correct=FALSE) #nope
wilcox.test(some$Anti.anaerobic,none$Anti.anaerobic, correct=FALSE) #nope
###################################################3

group1 <- subset(sample_data_table, Sample_bin==1)
group2 <- subset(sample_data_table, Sample_bin==2)
group3 <- subset(sample_data_table, Sample_bin==3)
group4 <- subset(sample_data_table, Sample_bin==4)
group5 <- subset(sample_data_table, Sample_bin==5)


wilcox.test(group1$Shannon,group2$Shannon,  correct=FALSE) #nope
wilcox.test(group2$Shannon,group1$Shannon,  correct=FALSE) #nope

wilcox.test(group1$Observed,group2$Observed,  correct=FALSE) #nope
wilcox.test(group1$Gini_coefficient,group2$Gini_coefficient,  correct=FALSE) #nope



describe(group1$Shannon)     
describe(group2$Shannon)
describe(group3$Shannon)     
describe(group4$Shannon) 
describe(group5$Shannon)     

describe(group1$Observed)     
describe(group2$Observed)
describe(group3$Observed)     
describe(group4$Observed)
describe(group5$Observed)     

describe(group1$Gini_coefficient)     
describe(group2$Gini_coefficient)
describe(group3$Gini_coefficient)     
describe(group4$Gini_coefficient)
describe(group5$Gini_coefficient)     

