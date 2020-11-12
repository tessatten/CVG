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


#in this file i want to look at the associations between various elements of the metadata!


#i'm going to test this out: separate plots for each transplant type - then colour by enough dna or not

heartpatients <- subset(sample_data_table, Patient_ID == "CVG006" | Patient_ID == "CVG007" | Patient_ID == "CVG008" | Patient_ID == "CVG009" | Patient_ID == "CVG010" | Patient_ID == "CVG011" | Patient_ID == "CVG023" | Patient_ID == "CVG024" | Patient_ID == "CVG038")
#this dataframe contains all the heart patients
#removing non-patient samples, and the two from over 1000 days beofre transplant
sample_data_table.sub <- subset(sample_data_table, Enough_DNA_to_sequence != "NA")
sample_data_table.sub <- subset(sample_data_table.sub, Patient_ID != "CVG010")
sample_data_table.sub <- subset(sample_data_table.sub, Patient_ID != "CVG039")

#now i'm going to plot all the patients samples by whether they worked or not
ggplot(sample_data_table.sub, aes(x=sample_data_table.sub$Number_of_days_post_transplant, y=reorder(sample_data_table.sub$Patient_ID, desc(sample_data_table.sub$Patient_ID)), color=sample_data_table.sub$Enough_DNA_to_sequence, fill=sample_data_table.sub$Enough_DNA_to_sequence, shape = sample_data_table.sub$Enough_DNA_to_sequence)) +
  geom_point(size = 10) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  labs(title = "", x = "Days post transplant", y = "Patient ID", color = "Sequenced") + scale_color_manual(labels = c("No", "Yes"), values = c("#DB556D", "#2FE27C")) + scale_shape_manual(values=c(18,16)) + guides(shape = FALSE)+
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=34, face="bold"),
    axis.title.y = element_text(color="black", size=34, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  )+ geom_vline(xintercept = 1, 
                        color = "black", size=1, linetype=3)
ggsave("enoughdnaNEW.pdf", width = 47, height = 60, units = c('cm'))


#now i'm going to plot just the heart patients samples by whether they worked or not
ggplot(heartpatients, aes(x=heartpatients$Number_of_days_post_transplant, y=heartpatients$Patient_ID, color=heartpatients$Enough_DNA_to_sequence, fill=heartpatients$Enough_DNA_to_sequence)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Patient ID") + 
  guides(fill=FALSE) +
  theme_bw()
ggsave("enoughdnaHEART.pdf", width = 47, height = 40, units = c('cm'))

#now kidney
kidneypatients <- subset(sample_data_table, Patient_ID == "CVG015" | Patient_ID == "CVG027" | Patient_ID == "CVG029" | Patient_ID == "CVG037" | Patient_ID == "CVG043" | Patient_ID == "CVG045" | Patient_ID == "CVG053" | Patient_ID == "CVG057")
#this dataframe contains all the kidney patients

#now i'm going to plot just the kidney patients samples by whether they worked or not
ggplot(kidneypatients, aes(x=kidneypatients$Number_of_days_post_transplant, y=kidneypatients$Patient_ID, color=kidneypatients$Enough_DNA_to_sequence, fill=kidneypatients$Enough_DNA_to_sequence)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Patient ID") + 
  guides(fill=FALSE) +
  theme_bw()
ggsave("enoughdnaKIDNEY.pdf", width = 47, height = 40, units = c('cm'))

#now gene therapy
genetherapypatients <- subset(sample_data_table, Patient_ID == "CVG003")
#this dataframe contains all the kidney patients

#now i'm going to plot just the kidney patients samples by whether they worked or not
ggplot(genetherapypatients, aes(x=genetherapypatients$Number_of_days_post_transplant, y=genetherapypatients$Patient_ID, color=genetherapypatients$Enough_DNA_to_sequence, fill=genetherapypatients$Enough_DNA_to_sequence)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Patient ID") + 
  guides(fill=FALSE) +
  theme_bw()
ggsave("enoughdnaGENETHERAPY.pdf", width = 47, height = 40, units = c('cm'))

#now finally HSCT
HSCTpatients <- subset(sample_data_table, Patient_ID == "CVG001" | Patient_ID == "CVG001" | Patient_ID == "CVG004" | Patient_ID == "CVG005" | Patient_ID == "CVG012" | Patient_ID == "CVG013" | Patient_ID == "CVG014" | Patient_ID == "CVG016" | Patient_ID == "CVG017" | Patient_ID == "CVG018" | Patient_ID == "CVG019" | Patient_ID == "CVG020" | Patient_ID == "CVG021" | Patient_ID == "CVG022" | Patient_ID == "CVG028" | Patient_ID == "CVG032" | Patient_ID == "CVG033" | Patient_ID == "CVG034" | Patient_ID == "CVG035" | Patient_ID == "CVG036" | Patient_ID == "CVG040" | Patient_ID == "CVG041" | Patient_ID == "CVG042" | Patient_ID == "CVG044" | Patient_ID == "CVG046" | Patient_ID == "CVG047" | Patient_ID == "CVG048" | Patient_ID == "CVG049" | Patient_ID == "CVG050" | Patient_ID == "CVG051" | Patient_ID == "CVG052" | Patient_ID == "CVG054" | Patient_ID == "CVG055" | Patient_ID == "CVG059" | Patient_ID == "CVG060")
#this dataframe contains all the HSCT patients

#now i'm going to plot just the HSCT patients samples by whether they worked or not
ggplot(HSCTpatients, aes(x=HSCTpatients$Number_of_days_post_transplant, y=HSCTpatients$Patient_ID, color=HSCTpatients$Enough_DNA_to_sequence, fill=HSCTpatients$Enough_DNA_to_sequence)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Patient ID") + 
  guides(fill=FALSE) +
  theme_bw()
ggsave("enoughdnaHSCT.pdf", width = 47, height = 40, units = c('cm'))


#now i'm going to plot just the HSCT patients samples by whether they the patient had diahorreea or not
ggplot(HSCTpatients, aes(x=HSCTpatients$Number_of_days_post_transplant, y=HSCTpatients$Patient_ID, color=HSCTpatients$Does_the_patient_have_diarrhoea, fill=HSCTpatients$Does_the_patient_have_diarrhoea)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Patient ID") + 
  guides(fill=FALSE) +
  theme_bw()
ggsave("diarrhoeaHSCT.pdf", width = 47, height = 40, units = c('cm'))



#i'm going to test this out: separate plots for each sex type - then colour by enough dna or not

malepatients <- subset(sample_data_table, Sex == "Male")
#this dataframe contains all the male  patients

#now i'm going to plot just the male patients samples by whether they worked or not
ggplot(malepatients, aes(x=malepatients$Number_of_days_post_transplant, y=malepatients$Patient_ID, color=malepatients$Enough_DNA_to_sequence, fill=malepatients$Enough_DNA_to_sequence)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Patient ID") + 
  guides(fill=FALSE) +
  theme_bw()
ggsave("enoughdnaMALE.pdf", width = 47, height = 40, units = c('cm'))

femalepatients <- subset(sample_data_table, Sex == "Female")
#this dataframe contains all the female patients

#now i'm going to plot just the female patients samples by whether they worked or not
ggplot(femalepatients, aes(x=femalepatients$Number_of_days_post_transplant, y=femalepatients$Patient_ID, color=femalepatients$Enough_DNA_to_sequence, fill=femalepatients$Enough_DNA_to_sequence)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Patient ID") + 
  guides(fill=FALSE) +
  theme_bw()
ggsave("enoughdnaFEMALE.pdf", width = 47, height = 40, units = c('cm'))

############
#can i do this by age? say, months versus years?
youngpatients <- subset(sample_data_table, Age_months > 0 & Age_months < 24) #this dataframe contains all the patients whose ages are given in months

#now i'm going to plot just the female patients samples by whether they worked or not
ggplot(youngpatients, aes(x=youngpatients$Number_of_days_post_transplant, y=youngpatients$Patient_ID, color=youngpatients$Enough_DNA_to_sequence, fill=youngpatients$Enough_DNA_to_sequence)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Patient ID") + 
  guides(fill=FALSE) +
  theme_bw()
ggsave("enoughdnaYOUNG.pdf", width = 47, height = 40, units = c('cm'))

#can i do this by age? say, months versus years?
oldpatients <- subset(sample_data_table, Age_years > 0 & Age_years < 24) #this dataframe contains all the patients whose ages are given in months

#now i'm going to plot just the female patients samples by whether they worked or not
ggplot(oldpatients, aes(x=oldpatients$Number_of_days_post_transplant, y=oldpatients$Patient_ID, color=oldpatients$Enough_DNA_to_sequence, fill=oldpatients$Enough_DNA_to_sequence)) +
  geom_point(size = 4) + theme(axis.title.x = element_text(size=5),
                               axis.text.x  = element_text(angle=90, vjust=0.5, size=5)) +   # Remove x-axis label
  geom_line() +
  xlab("Days post transplant") + 
  ylab("Patient ID") + 
  guides(fill=FALSE) +
  theme_bw()
ggsave("enoughdnaOLD.pdf", width = 47, height = 40, units = c('cm'))


#NMDS plotting

all.ord <- ordinate(CVG_phyloseq, "NMDS", "bray")
nmdsplot = plot_ordination(CVG_phyloseq, all.ord, type = "taxa", color = "Phylum", title = "taxa")

print(nmdsplot)

nmdsplot + facet_wrap(~Phylum, 3)

nmdsplot2 = plot_ordination(CVG_phyloseq, all.ord, type = "samples", color = "Sample_bin")
nmdsplot2 + geom_polygon(aes(fill = Sample_bin)) + geom_point(size = 5) + ggtitle("samples")
nmdsplot2 + geom_point(size = 5) + theme_bw()
ggsave("nmdsbin.pdf", width = 47, height = 40, units = c('cm'))

nmdsplot2 = plot_ordination(CVG_phyloseq, all.ord, type = "samples", color = "Patient_ID")
nmdsplot2 + geom_point(size = 5) + theme_bw()
ggsave("nmdspatient.pdf", width = 47, height = 40, units = c('cm'))

#testing
GP.ord <- ordinate(CVG_phyloseq, "NMDS", "bray")
p1 = plot_ordination(CVG_phyloseq, CVG.ord, type="taxa", color="Phylum", title="taxa")
print(p1)

p1 + facet_wrap(~Phylum, 3)
print(p1)

p2 = plot_ordination(CVG_phyloseq, CVG.ord, type="Sample_bin", color="Sample_bin") 
p2 + geom_polygon(aes(fill=Sample_bin)) + geom_point(size=5) + ggtitle("samples")


alpha = plot_richness(CVG_phyloseq, x = "Sample_bin",measures = c("Chao1", "Shannon", "Simpson"))

withinp = alpha + geom_boxplot(data=alpha$data, aes(x=Sample_bin, y=value, color=NULL), alpha=0.1)
ggsave("withinbin.pdf", width = 47, height = 40, units = c('cm'))

