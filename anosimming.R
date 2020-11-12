
library("vegan")

threepatients = subset_samples(final_genus_CVG, Patient_ID %in% c("CVG001","CVG002","CVG003","CVG004","CVG005","CVG012","CVG014","CVG016","CVG017","CVG019","CVG021","CVG028","CVG032","CVG041","CVG042","CVG046","CVG047","CVG048","CVG052","CVG054"))

newPhyloObject = subset_samples(threepatients, Stool_lab_number != "14V54331") #remove the 2 without enough reads
threepatients = subset_samples(newPhyloObject, Stool_lab_number != "14V54122")
threepatients = subset_samples(threepatients, Stool_lab_number != "14V54231")

smushed <- veganotu(threepatients) #thid makes a dataframe

keepvariables = which(sapply(sample_data(threepatients), is.factor))

smusheded = data.frame(sample_data(threepatients))[keepvariables]


library("QsRutils")

anosim(smushed, smusheded$Sample_bin, permutations = 999, distance = "bray", strata = NULL,
       parallel = 1)

anosim(smushed, smusheded$Patient_ID, permutations = 999, distance = "bray", strata = NULL,
       parallel = 1)


sample_data_table

low_div <- sample_data_table[ which(sample_data_table$GvHD.severity=='Low' & sample_data_table$Pre_or_post == 'Pre'),]
low_div <- low_div[ which(low_div$Patient_ID=='CVG001' | low_div$Patient_ID == 'CVG028'| low_div$Patient_ID == 'CVG032'| low_div$Patient_ID == 'CVG047'),]

med_div <- sample_data_table[ which(sample_data_table$GvHD.severity=='Mod' & sample_data_table$Pre_or_post == 'Pre'),]


median(low_div$Observed)
median(low_div$Shannon)

median(med_div$Observed)
median(med_div$Shannon)
