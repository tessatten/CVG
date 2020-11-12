#firdst turn all into faxgglomGenus objets

#advice on how to extract an abundance matrix from a phyloseq object

CVG001 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG001")

testglom001 = tax_glom(CVG001, taxrank = "Genus")

CVG001 = as(otu_table(testglom001), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom001)){OTU001 <- t(OTU001)}

#coerce to a dataframe
CVG001df = as.data.frame(CVG001) #hurrah! have taxglom-ed dataframe for CVG001
pie <- row.names(CVG001df) #collect list of OTUs
CVG001df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG001dfm <- merge(x = CVG001df, y = tax_data_table, by = "OTU", all.x = TRUE)
#this contains all phylogenetic information now too!!!
#okay, can i make this into a dataframe suitable for the timeseries plot? 


############################################################


#on CVG002
CVG002 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG002")
rank_names(CVG002)

test = otu_table(CVG002)


testglom002 = tax_glom(CVG002, taxrank = "Genus")

#advice on how to extract an abundance matrix from a phyloseq object

CVG002 = as(otu_table(testglom002), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom002)){CVG002 <- t(CVG002)}

#coerce to a dataframe
CVG002df = as.data.frame(CVG002) #hurrah! have taxglom-ed dataframe for CVG002
pie <- row.names(CVG002df) #collect list of OTUs
CVG002df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG002dfm <- merge(x = CVG002df, y = tax_data_table, by = "OTU", all.x = TRUE)


#on CVG003
CVG003 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG003")
rank_names(CVG003)

test = otu_table(CVG003)


testglom003 = tax_glom(CVG003, taxrank = "Genus")

#advice on how to extract an abundance matrix from a phyloseq object

CVG003 = as(otu_table(testglom003), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom003)){CVG003 <- t(CVG003)}

#coerce to a dataframe
CVG003df = as.data.frame(CVG003) #hurrah! have taxglom-ed dataframe for CVG003
pie <- row.names(CVG003df) #collect list of OTUs
CVG003df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG003dfm <- merge(x = CVG003df, y = tax_data_table, by = "OTU", all.x = TRUE)

#on CVG004
CVG004 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG004")
rank_names(CVG004)

test = otu_table(CVG004)


testglom004 = tax_glom(CVG004, taxrank = "Genus")

#advice on how to extract an abundance matrix from a phyloseq object

CVG004 = as(otu_table(testglom004), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom004)){CVG004 <- t(CVG004)}

#coerce to a dataframe
CVG004df = as.data.frame(CVG004) #hurrah! have taxglom-ed dataframe for CVG004
pie <- row.names(CVG004df) #collect list of OTUs
CVG004df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG004dfm <- merge(x = CVG004df, y = tax_data_table, by = "OTU", all.x = TRUE)


#on CVG012
CVG012 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG012")
rank_names(CVG012)

test = otu_table(CVG012)


testglom012 = tax_glom(CVG012, taxrank = "Genus")

#advice on how to extract an abundance matrix from a phyloseq object

CVG012 = as(otu_table(testglom012), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom012)){CVG012 <- t(CVG012)}

#coerce to a dataframe
CVG012df = as.data.frame(CVG012) #hurrah! have taxglom-ed dataframe for CVG012
pie <- row.names(CVG012df) #collect list of OTUs
CVG012df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG012dfm <- merge(x = CVG012df, y = tax_data_table, by = "OTU", all.x = TRUE)

#on CVG014
CVG014 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG014")
rank_names(CVG014)

test = otu_table(CVG014)


testglom014 = tax_glom(CVG014, taxrank = "Genus")

#advice on how to extract an abundance matrix from a phyloseq object

CVG014 = as(otu_table(testglom014), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom014)){CVG014 <- t(CVG014)}

#coerce to a dataframe
CVG014df = as.data.frame(CVG014) #hurrah! have taxglom-ed dataframe for CVG014
pie <- row.names(CVG014df) #collect list of OTUs
CVG014df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG014dfm <- merge(x = CVG014df, y = tax_data_table, by = "OTU", all.x = TRUE)

#CVG014 = subset_samples(CVG_phyloseq, Patient_ID == "CVG014")

#on CVG017
CVG017 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG017")
rank_names(CVG017)

test = otu_table(CVG017)


testglom017 = tax_glom(CVG017, taxrank = "Genus")

#advice on how to extract an abundance matrix from a phyloseq object

CVG017 = as(otu_table(testglom017), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom017)){CVG017 <- t(CVG017)}

#coerce to a dataframe
CVG017df = as.data.frame(CVG017) #hurrah! have taxglom-ed dataframe for CVG017
pie <- row.names(CVG017df) #collect list of OTUs
CVG017df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG017dfm <- merge(x = CVG017df, y = tax_data_table, by = "OTU", all.x = TRUE)


#on CVG019
CVG019 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG019")
rank_names(CVG019)

test = otu_table(CVG019)


testglom019 = tax_glom(CVG019, taxrank = "Genus")

#advice on how to extract an abundance matrix from a phyloseq object

CVG019 = as(otu_table(testglom019), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom019)){CVG019 <- t(CVG019)}

#coerce to a dataframe
CVG019df = as.data.frame(CVG019) #hurrah! have taxglom-ed dataframe for CVG019
pie <- row.names(CVG019df) #collect list of OTUs
CVG019df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG019dfm <- merge(x = CVG019df, y = tax_data_table, by = "OTU", all.x = TRUE)


#on CVG021
CVG021 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG021")
rank_names(CVG021)

test = otu_table(CVG021)


testglom021 = tax_glom(CVG021, taxrank = "Genus")

#advice on how to extract an abundance matrix from a phyloseq object

CVG021 = as(otu_table(testglom021), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom021)){CVG021 <- t(CVG021)}

#coerce to a dataframe
CVG021df = as.data.frame(CVG021) #hurrah! have taxglom-ed dataframe for CVG021
pie <- row.names(CVG021df) #collect list of OTUs
CVG021df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG021dfm <- merge(x = CVG021df, y = tax_data_table, by = "OTU", all.x = TRUE)


#on CVG028
CVG028 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG028")
rank_names(CVG028)

test = otu_table(CVG028)


testglom028 = tax_glom(CVG028, taxrank = "Genus")

#advice on how to extract an abundance matrix from a phyloseq object

CVG028 = as(otu_table(testglom028), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom028)){CVG028 <- t(CVG028)}

#coerce to a dataframe
CVG028df = as.data.frame(CVG028) #hurrah! have taxglom-ed dataframe for CVG028
pie <- row.names(CVG028df) #collect list of OTUs
CVG028df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG028dfm <- merge(x = CVG028df, y = tax_data_table, by = "OTU", all.x = TRUE)


#on CVG032
CVG032 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG032")
rank_names(CVG032)

test = otu_table(CVG032)


testglom032 = tax_glom(CVG032, taxrank = "Genus")

#advice on how to extract an abundance matrix from a phyloseq object

CVG032 = as(otu_table(testglom032), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom032)){CVG032 <- t(CVG032)}

#coerce to a dataframe
CVG032df = as.data.frame(CVG032) #hurrah! have taxglom-ed dataframe for CVG032
pie <- row.names(CVG032df) #collect list of OTUs
CVG032df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG032dfm <- merge(x = CVG032df, y = tax_data_table, by = "OTU", all.x = TRUE)



#on CVG041
CVG041 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG041")
rank_names(CVG041)

test = otu_table(CVG041)


testglom041 = tax_glom(CVG041, taxrank = "Genus")

#advice on how to extract an abundance matrix from a phyloseq object

CVG041 = as(otu_table(testglom041), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom041)){CVG041 <- t(CVG041)}

#coerce to a dataframe
CVG041df = as.data.frame(CVG041) #hurrah! have taxglom-ed dataframe for CVG041
pie <- row.names(CVG041df) #collect list of OTUs
CVG041df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG041dfm <- merge(x = CVG041df, y = tax_data_table, by = "OTU", all.x = TRUE)

#on CVG042
CVG042 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG042")
rank_names(CVG042)

test = otu_table(CVG042)


testglom042 = tax_glom(CVG042, taxrank = "Genus")

#advice on how to extract an abundance matrix from a phyloseq object

CVG042 = as(otu_table(testglom042), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom042)){CVG042 <- t(CVG042)}

#coerce to a dataframe
CVG042df = as.data.frame(CVG042) #hurrah! have taxglom-ed dataframe for CVG042
pie <- row.names(CVG042df) #collect list of OTUs
CVG042df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG042dfm <- merge(x = CVG042df, y = tax_data_table, by = "OTU", all.x = TRUE)



#on CVG046
CVG046 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG046")
rank_names(CVG046)

test = otu_table(CVG046)


testglom046 = tax_glom(CVG046, taxrank = "Genus")

#advice on how to extract an abundance matrix from a phyloseq object

CVG046 = as(otu_table(testglom046), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom046)){CVG046 <- t(CVG046)}

#coerce to a dataframe
CVG046df = as.data.frame(CVG046) #hurrah! have taxglom-ed dataframe for CVG046
pie <- row.names(CVG046df) #collect list of OTUs
CVG046df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG046dfm <- merge(x = CVG046df, y = tax_data_table, by = "OTU", all.x = TRUE)

#on CVG047
CVG047 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG047")
rank_names(CVG047)

test = otu_table(CVG047)


testglom047 = tax_glom(CVG047, taxrank = "Genus")

#advice on how to extract an abundance matrix from a phyloseq object

CVG047 = as(otu_table(testglom047), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom047)){CVG047 <- t(CVG047)}

#coerce to a dataframe
CVG047df = as.data.frame(CVG047) #hurrah! have taxglom-ed dataframe for CVG047
pie <- row.names(CVG047df) #collect list of OTUs
CVG047df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG047dfm <- merge(x = CVG047df, y = tax_data_table, by = "OTU", all.x = TRUE)

#on CVG048
CVG048 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG048")
rank_names(CVG048)

test = otu_table(CVG048)


testglom048 = tax_glom(CVG048, taxrank = "Genus")

#advice on how to extract an abundance matrix from a phyloseq object

CVG048 = as(otu_table(testglom048), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom048)){CVG048 <- t(CVG048)}

#coerce to a dataframe
CVG048df = as.data.frame(CVG048) #hurrah! have taxglom-ed dataframe for CVG048
pie <- row.names(CVG048df) #collect list of OTUs
CVG048df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG048dfm <- merge(x = CVG048df, y = tax_data_table, by = "OTU", all.x = TRUE)

#on CVG052
CVG052 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG052")
rank_names(CVG052)

test = otu_table(CVG052)


testglom052 = tax_glom(CVG052, taxrank = "Genus")

#advice on how to extract an abundance matrix from a phyloseq object

CVG052 = as(otu_table(testglom052), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom052)){CVG052 <- t(CVG052)}

#coerce to a dataframe
CVG052df = as.data.frame(CVG052) #hurrah! have taxglom-ed dataframe for CVG052
pie <- row.names(CVG052df) #collect list of OTUs
CVG052df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG052dfm <- merge(x = CVG052df, y = tax_data_table, by = "OTU", all.x = TRUE)

#on CVG054
CVG054 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG054")
rank_names(CVG054)

test = otu_table(CVG054)


testglom054 = tax_glom(CVG054, taxrank = "Genus")

#advice on how to extract an abundance matrix from a phyloseq object

CVG054 = as(otu_table(testglom054), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom054)){CVG054 <- t(CVG054)}

#coerce to a dataframe
CVG054df = as.data.frame(CVG054) #hurrah! have taxglom-ed dataframe for CVG054
pie <- row.names(CVG054df) #collect list of OTUs
CVG054df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG054dfm <- merge(x = CVG054df, y = tax_data_table, by = "OTU", all.x = TRUE)


#on CVG005
CVG005 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG005")
rank_names(CVG005)

test = otu_table(CVG005)


testglom005 = tax_glom(CVG005, taxrank = "Genus")

#advice on how to extract an abundance matrix from a phyloseq object

CVG005 = as(otu_table(testglom005), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom048)){CVG005 <- t(CVG005)}

#coerce to a dataframe
CVG005df = as.data.frame(CVG005) #hurrah! have taxglom-ed dataframe for CVG005
pie <- row.names(CVG005df) #collect list of OTUs
CVG005df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG005dfm <- merge(x = CVG005df, y = tax_data_table, by = "OTU", all.x = TRUE)

#on CVG016
CVG016 = subset_samples(CVG_phyloseq_decontaminated, Patient_ID == "CVG016")
rank_names(CVG016)

test = otu_table(CVG016)


testglom016 = tax_glom(CVG016, taxrank = "Genus")

#advice on how to extract an abundance matrix from a phyloseq object

CVG016 = as(otu_table(testglom016), "matrix")

#if you want to transpose it
#if(taxa_are_rows(testglom048)){CVG016 <- t(CVG016)}

#coerce to a dataframe
CVG016df = as.data.frame(CVG016) #hurrah! have taxglom-ed dataframe for CVG016
pie <- row.names(CVG016df) #collect list of OTUs
CVG016df$OTU = pie #add otus as a column

#now i  want to use left join to add the Genus onto the dataframe. there are 210 obs of 6

CVG016dfm <- merge(x = CVG016df, y = tax_data_table, by = "OTU", all.x = TRUE)

#############################################################################
####okay now im going to get the abundaces and join them

#001
fillseq <- seq(1, length(CVG001dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG001dfm <- CVG001dfm[order(CVG001dfm$Genus),]

CVG001dfm$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes


#time point 1
ID <- "CVG001"
OTUs<- CVG001dfm$OTU
Count <- CVG001dfm$CVG14V54004
Days_post <- "-8"
Genus <- CVG001dfm$Genus
fillseq <- CVG001dfm$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG001"
OTUs<- CVG001dfm$OTU
Count <- CVG001dfm$CVG14V54008
Days_post <- "12"
Genus <- CVG001dfm$Genus
fillseq <- CVG001dfm$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG001"
OTUs<- CVG001dfm$OTU
Count <- CVG001dfm$CVG14V54017
Days_post <- "27"
Genus <- CVG001dfm$Genus
fillseq <- CVG001dfm$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   

#time point 4
ID <- "CVG001"
OTUs<- CVG001dfm$OTU
Count <- CVG001dfm$CVG14V54031
Days_post <- "41"
Genus <- CVG001dfm$Genus
fillseq <- CVG001dfm$fillseq
temp4 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp4 <- temp4[!(temp4$Count==0),]  

#t4 the fourth time point  

#time point 5
ID <- "CVG001"
OTUs<- CVG001dfm$OTU
Count <- CVG001dfm$CVG14V54120
Days_post <- "104"
Genus <- CVG001dfm$Genus
fillseq <- CVG001dfm$fillseq
temp5 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp5 <- temp5[!(temp5$Count==0),]  

# create 1 entry for all non-shared sequences
temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod
temp4.mod <- temp4
temp5.mod <- temp5
# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages
temp4.mod$Count <- (100/sum(temp4.mod$Count))*temp4.mod$Count
temp5.mod$Count <- (100/sum(temp5.mod$Count))*temp5.mod$Count

stackedSharedGenus1 <- rbind(temp1.mod, temp2.mod, temp3.mod, temp4.mod, temp5.mod) #add together shared sequences
stackedSharedGenus1raw <- rbind(temp1, temp2, temp3, temp4, temp5) #add together shared sequences

#002

fillseq <- seq(1, length(CVG002dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG002dfmA <- CVG002dfm[order(CVG002dfm$Genus),]

CVG002dfmA$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes

#time point 1
ID <- "CVG002"
OTUs<- CVG002dfmA$OTU
Count <- CVG002dfmA$CVG14V54006
Days_post <- "10"
Genus <- CVG002dfmA$Genus
fillseq <- CVG002dfmA$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG002"
OTUs<- CVG002dfmA$OTU
Count <- CVG002dfmA$CVG14V54013
Days_post <- "26"
Genus <- CVG002dfmA$Genus
fillseq <- CVG002dfmA$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG002"
OTUs<- CVG002dfmA$OTU
Count <- CVG002dfmA$CVG14V54014
Days_post <- "32"
Genus <- CVG002dfmA$Genus
fillseq <- CVG002dfmA$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   

#time point 4
ID <- "CVG002"
OTUs<- CVG002dfmA$OTU
Count <- CVG002dfmA$CVG14V54069
Days_post <- "67"
Genus <- CVG002dfmA$Genus
fillseq <- CVG002dfmA$fillseq
temp4 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp4 <- temp4[!(temp4$Count==0),]   
#t4 the fourth time point  

#time point 5
ID <- "CVG002"
OTUs<- CVG002dfmA$OTU
Count <- CVG002dfmA$CVG14V54078
Days_post <- "69"
Genus <- CVG002dfmA$Genus
fillseq <- CVG002dfmA$fillseq
temp5 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp5 <- temp5[!(temp5$Count==0),]   
#t5 the fifth time point  

#time point 6
ID <- "CVG002"
OTUs<- CVG002dfmA$OTU
Count <- CVG002dfmA$CVG14V54100
Days_post <- "90"
Genus <- CVG002dfmA$Genus
fillseq <- CVG002dfmA$fillseq
temp6 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp6 <- temp6[!(temp6$Count==0),]   
#t6 the sixth time point  

#time point 7
ID <- "CVG002"
OTUs<- CVG002dfmA$OTU
Count <- CVG002dfmA$CVG14V54252
Days_post <- "207"
Genus <- CVG002dfmA$Genus
fillseq <- CVG002dfmA$fillseq
temp7 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp7 <- temp7[!(temp7$Count==0),]   
#t7 the seventh time point  

#time point 8
ID <- "CVG002"
OTUs<- CVG002dfmA$OTU
Count <- CVG002dfmA$CVG14V54283
Days_post <- "222"
Genus <- CVG002dfmA$Genus
fillseq <- CVG002dfmA$fillseq
temp8 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp8 <- temp8[!(temp8$Count==0),]   
#t8 the eighth time point  

#time point 9
ID <- "CVG002"
OTUs<- CVG002dfmA$OTU
Count <- CVG002dfmA$CVG14V54442
Days_post <- "304"
Genus <- CVG002dfmA$Genus
fillseq <- CVG002dfmA$fillseq
temp9 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp9 <- temp9[!(temp9$Count==0),]   
#t9 the ninth time point 

temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod
temp4.mod <- temp4
temp5.mod <- temp5
temp6.mod <- temp6
temp7.mod <- temp7
temp8.mod <- temp8
temp9.mod <- temp9
# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages
temp4.mod$Count <- (100/sum(temp4.mod$Count))*temp4.mod$Count
temp5.mod$Count <- (100/sum(temp5.mod$Count))*temp5.mod$Count
temp6.mod$Count <- (100/sum(temp6.mod$Count))*temp6.mod$Count
temp7.mod$Count <- (100/sum(temp7.mod$Count))*temp7.mod$Count
temp8.mod$Count <- (100/sum(temp8.mod$Count))*temp8.mod$Count
temp9.mod$Count <- (100/sum(temp9.mod$Count))*temp9.mod$Count

stackedSharedGenus2 <- rbind(temp1.mod, temp2.mod, temp3.mod, temp4.mod, temp5.mod, temp6.mod, temp7.mod, temp8.mod, temp9.mod) #add together shared sequences

#003
fillseq <- seq(1, length(CVG003dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG003dfm <- CVG003dfm[order(CVG003dfm$Genus),]

CVG003dfm$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes

#time point 1
ID <- "CVG003"
OTUs<- CVG003dfm$OTU
Count <- CVG003dfm$CVG14V54022
Days_post <- "0"
Genus <- CVG003dfm$Genus
fillseq <- CVG003dfm$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG003"
OTUs<- CVG003dfm$OTU
Count <- CVG003dfm$CVG14V54077
Days_post <- "32"
Genus <- CVG003dfm$Genus
fillseq <- CVG003dfm$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG003"
OTUs<- CVG003dfm$OTU
Count <- CVG003dfm$CVG14V54268
Days_post <- "180"
Genus <- CVG003dfm$Genus
fillseq <- CVG003dfm$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   

# create 1 entry for all non-shared sequences
temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod

# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages

stackedSharedGenus3 <- rbind(temp1.mod, temp2.mod, temp3.mod) #add together shared sequences


#004
fillseq <- seq(1, length(CVG004dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG004dfm <- CVG004dfm[order(CVG004dfm$Genus),]

CVG004dfm$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes



#time point 1
ID <- "CVG004"
OTUs<- CVG004dfm$OTU
Count <- CVG004dfm$CVG14V54020
Days_post <- "0"
Genus <- CVG004dfm$Genus
fillseq <- CVG004dfm$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG004"
OTUs<- CVG004dfm$OTU
Count <- CVG004dfm$CVG14V54068
Days_post <- "28"
Genus <- CVG004dfm$Genus
fillseq <- CVG004dfm$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG004"
OTUs<- CVG004dfm$OTU
Count <- CVG004dfm$CVG14V54241
Days_post <- "161"
Genus <- CVG004dfm$Genus
fillseq <- CVG004dfm$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   

#time point 4
ID <- "CVG004"
OTUs<- CVG004dfm$OTU
Count <- CVG004dfm$CVG14V54316
Days_post <- "210"
Genus <- CVG004dfm$Genus
fillseq <- CVG004dfm$fillseq
temp4 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp4 <- temp4[!(temp4$Count==0),]   
#t4 the fourth time point 
# create 1 entry for all non-shared sequences
temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod
temp4.mod <- temp4
# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages
temp4.mod$Count <- (100/sum(temp4.mod$Count))*temp4.mod$Count

stackedSharedGenus4 <- rbind(temp1.mod, temp2.mod, temp3.mod, temp4.mod) #add together shared sequences

#005
fillseq <- seq(1, length(CVG005dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG005dfm <- CVG005dfm[order(CVG005dfm$Genus),]

CVG005dfm$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes

#time point 1
ID <- "CVG005"
OTUs<- CVG005dfm$OTU
Count <- CVG005dfm$CVG14V54099
Days_post <- "34"
Genus <- CVG005dfm$Genus
fillseq <- CVG005dfm$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG005"
OTUs<- CVG005dfm$OTU
Count <- CVG005dfm$CVG14V54114
Days_post <- "43"
Genus <- CVG005dfm$Genus
fillseq <- CVG005dfm$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG005"
OTUs<- CVG005dfm$OTU
Count <- CVG005dfm$CVG14V54117
Days_post <- "44"
Genus <- CVG005dfm$Genus
fillseq <- CVG005dfm$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   

# create 1 entry for all non-shared sequences
temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod
# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages

stackedSharedGenus5 <- rbind(temp1.mod, temp2.mod, temp3.mod) #add together shared sequences

#014
fillseq <- seq(1, length(CVG014dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG014dfm <- CVG014dfm[order(CVG014dfm$Genus),]

CVG014dfm$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes



#time point 1
ID <- "CVG014"
OTUs<- CVG014dfm$OTU
Count <- CVG014dfm$CVG14V54113
Days_post <- "18"
Genus <- CVG014dfm$Genus
fillseq <- CVG014dfm$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG014"
OTUs<- CVG014dfm$OTU
Count <- CVG014dfm$CVG14V54159
Days_post <- "19"
Genus <- CVG014dfm$Genus
fillseq <- CVG014dfm$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG014"
OTUs<- CVG014dfm$OTU
Count <- CVG014dfm$CVG14V54167
Days_post <- "34"
Genus <- CVG014dfm$Genus
fillseq <- CVG014dfm$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   

#time point 4
ID <- "CVG014"
OTUs<- CVG014dfm$OTU
Count <- CVG014dfm$CVG14V54181
Days_post <- "55"
Genus <- CVG014dfm$Genus
fillseq <- CVG014dfm$fillseq
temp4 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp4 <- temp4[!(temp4$Count==0),]   
#t4 the fourth time point  


# create 1 entry for all non-shared sequences
temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod
temp4.mod <- temp4
# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages
temp4.mod$Count <- (100/sum(temp4.mod$Count))*temp4.mod$Count

stackedSharedGenus14 <- rbind(temp1.mod, temp2.mod, temp3.mod, temp4.mod) #add together shared sequences

#016
fillseq <- seq(1, length(CVG016dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG016dfm <- CVG016dfm[order(CVG016dfm$Genus),]

CVG016dfm$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes


#time point 1
ID <- "CVG016"
OTUs<- CVG016dfm$OTU
Count <- CVG016dfm$CVG14V54119
Days_post <- "8"
Genus <- CVG016dfm$Genus
fillseq <- CVG016dfm$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG016"
OTUs<- CVG016dfm$OTU
Count <- CVG016dfm$CVG14V54172
Days_post <- "35"
Genus <- CVG016dfm$Genus
fillseq <- CVG016dfm$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG016"
OTUs<- CVG016dfm$OTU
Count <- CVG016dfm$CVG14V54472
Days_post <- "220"
Genus <- CVG016dfm$Genus
fillseq <- CVG016dfm$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   

# create 1 entry for all non-shared sequences
temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod
# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages

stackedSharedGenus16 <- rbind(temp1.mod, temp2.mod, temp3.mod) #add together shared sequences


#012
fillseq <- seq(1, length(CVG012dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG012dfm <- CVG012dfm[order(CVG012dfm$Genus),]

CVG012dfm$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes



#time point 1
ID <- "CVG012"
OTUs<- CVG012dfm$OTU
Count <- CVG012dfm$CVG14V54079
Days_post <- "-7"
Genus <- CVG012dfm$Genus
fillseq <- CVG012dfm$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG012"
OTUs<- CVG012dfm$OTU
Count <- CVG012dfm$CVG14V54083
Days_post <- "1"
Genus <- CVG012dfm$Genus
fillseq <- CVG012dfm$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG012"
OTUs<- CVG012dfm$OTU
Count <- CVG012dfm$CVG14V54092
Days_post <- "7"
Genus <- CVG012dfm$Genus
fillseq <- CVG012dfm$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   

#time point 4
ID <- "CVG012"
OTUs<- CVG012dfm$OTU
Count <- CVG012dfm$CVG14V54107
Days_post <- "25"
Genus <- CVG012dfm$Genus
fillseq <- CVG012dfm$fillseq
temp4 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp4 <- temp4[!(temp4$Count==0),]   
#t4 the fourth time point  

#time point 5
ID <- "CVG012"
OTUs<- CVG012dfm$OTU
Count <- CVG012dfm$CVG14V54121
Days_post <- "36"
Genus <- CVG012dfm$Genus
fillseq <- CVG012dfm$fillseq
temp5 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp5 <- temp5[!(temp5$Count==0),]   
#t5 the fifth time point  

#time point 6
ID <- "CVG012"
OTUs<- CVG012dfm$OTU
Count <- CVG012dfm$CVG14V54176
Days_post <- "62"
Genus <- CVG012dfm$Genus
fillseq <- CVG012dfm$fillseq
temp6 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp6 <- temp6[!(temp6$Count==0),]   
#t6 the sixth time point  

#time point 7
ID <- "CVG012"
OTUs<- CVG012dfm$OTU
Count <- CVG012dfm$CVG14V54206
Days_post <- "89"
Genus <- CVG012dfm$Genus
fillseq <- CVG012dfm$fillseq
temp7 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp7 <- temp7[!(temp7$Count==0),]   
#t7 the seventh time point  

#time point 8
ID <- "CVG012"
OTUs<- CVG012dfm$OTU
Count <- CVG012dfm$CVG14V54235
Days_post <- "117"
Genus <- CVG012dfm$Genus
fillseq <- CVG012dfm$fillseq
temp8 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp8 <- temp8[!(temp8$Count==0),]   
#t8 the eighth time point  

#time point 9
ID <- "CVG012"
OTUs<- CVG012dfm$OTU
Count <- CVG012dfm$CVG14V54436
Days_post <- "236"
Genus <- CVG012dfm$Genus
fillseq <- CVG012dfm$fillseq
temp9 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp9 <- temp9[!(temp9$Count==0),]   
#t9 the ninth time point 

#time point 10
ID <- "CVG012"
OTUs<- CVG012dfm$OTU
Count <- CVG012dfm$CVG14V54484
Days_post <- "271"
Genus <- CVG012dfm$Genus
fillseq <- CVG012dfm$fillseq
temp10 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp10 <- temp10[!(temp10$Count==0),]   
#t10 the tenth time point 

# create 1 entry for all non-shared sequences
temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod
temp4.mod <- temp4
temp5.mod <- temp5
temp6.mod <- temp6
temp7.mod <- temp7
temp8.mod <- temp8
temp9.mod <- temp9
temp10.mod <- temp10


# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages
temp4.mod$Count <- (100/sum(temp4.mod$Count))*temp4.mod$Count
temp5.mod$Count <- (100/sum(temp5.mod$Count))*temp5.mod$Count
temp6.mod$Count <- (100/sum(temp6.mod$Count))*temp6.mod$Count
temp7.mod$Count <- (100/sum(temp7.mod$Count))*temp7.mod$Count
temp8.mod$Count <- (100/sum(temp8.mod$Count))*temp8.mod$Count
temp9.mod$Count <- (100/sum(temp9.mod$Count))*temp9.mod$Count
temp10.mod$Count <- (100/sum(temp10.mod$Count))*temp10.mod$Count

stackedSharedGenus12 <- rbind(temp1.mod, temp2.mod, temp3.mod, temp4.mod, temp5.mod, temp6.mod, temp7.mod, temp8.mod, temp9.mod, temp10.mod) #add together shared sequences

#032
fillseq <- seq(1, length(CVG032dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG032dfm <- CVG032dfm[order(CVG032dfm$Genus),]

CVG032dfm$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes



#time point 1
ID <- "CVG032"
OTUs<- CVG032dfm$OTU
Count <- CVG032dfm$CVG14V54260
Days_post <- "-7"
Genus <- CVG032dfm$Genus
fillseq <- CVG032dfm$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG032"
OTUs<- CVG032dfm$OTU
Count <- CVG032dfm$CVG14V54259
Days_post <- "-2"
Genus <- CVG032dfm$Genus
fillseq <- CVG032dfm$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG032"
OTUs<- CVG032dfm$OTU
Count <- CVG032dfm$CVG14V54266
Days_post <- "0"
Genus <- CVG032dfm$Genus
fillseq <- CVG032dfm$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   

#time point 4
ID <- "CVG032"
OTUs<- CVG032dfm$OTU
Count <- CVG032dfm$CVG14V54336
Days_post <- "42"
Genus <- CVG032dfm$Genus
fillseq <- CVG032dfm$fillseq
temp4 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp4 <- temp4[!(temp4$Count==0),]   
#t4 the fourth time point  

#time point 5
ID <- "CVG032"
OTUs<- CVG032dfm$OTU
Count <- CVG032dfm$CVG14V54370
Days_post <- "69"
Genus <- CVG032dfm$Genus
fillseq <- CVG032dfm$fillseq
temp5 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp5 <- temp5[!(temp5$Count==0),]   
#t5 the fifth time point  

#time point 6
ID <- "CVG032"
OTUs<- CVG032dfm$OTU
Count <- CVG032dfm$CVG14V54429
Days_post <- "96"
Genus <- CVG032dfm$Genus
fillseq <- CVG032dfm$fillseq
temp6 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp6 <- temp6[!(temp6$Count==0),]   
#t6 the sixth time point  

#time point 7
ID <- "CVG032"
OTUs<- CVG032dfm$OTU
Count <- CVG032dfm$CVG14V54459
Days_post <- "98"
Genus <- CVG032dfm$Genus
fillseq <- CVG032dfm$fillseq
temp7 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp7 <- temp7[!(temp7$Count==0),]   
#t7 the seventh time point  

#time point 8
ID <- "CVG032"
OTUs<- CVG032dfm$OTU
Count <- CVG032dfm$CVG14V54520
Days_post <- "142"
Genus <- CVG032dfm$Genus
fillseq <- CVG032dfm$fillseq
temp8 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp8 <- temp8[!(temp8$Count==0),]   
#t8 the eighth time point 

# create 1 entry for all non-shared sequences
temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod
temp4.mod <- temp4
temp5.mod <- temp5
temp6.mod <- temp6
temp7.mod <- temp7
temp8.mod <- temp8

# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages
temp4.mod$Count <- (100/sum(temp4.mod$Count))*temp4.mod$Count
temp5.mod$Count <- (100/sum(temp5.mod$Count))*temp5.mod$Count
temp6.mod$Count <- (100/sum(temp6.mod$Count))*temp6.mod$Count
temp7.mod$Count <- (100/sum(temp7.mod$Count))*temp7.mod$Count
temp8.mod$Count <- (100/sum(temp8.mod$Count))*temp8.mod$Count

stackedSharedGenus32 <- rbind(temp1.mod, temp2.mod, temp3.mod, temp4.mod, temp5.mod, temp6.mod, temp7.mod, temp8.mod) #add together shared sequences

#047
fillseq <- seq(1, length(CVG047dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG047dfm <- CVG047dfm[order(CVG047dfm$Genus),]

CVG047dfm$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes


#time point 1
ID <- "CVG047"
OTUs<- CVG047dfm$OTU
Count <- CVG047dfm$CVG14V54339
Days_post <- "-8"
Genus <- CVG047dfm$Genus
fillseq <- CVG047dfm$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG047"
OTUs<- CVG047dfm$OTU
Count <- CVG047dfm$CVG14V54393
Days_post <- "13"
Genus <- CVG047dfm$Genus
fillseq <- CVG047dfm$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG047"
OTUs<- CVG047dfm$OTU
Count <- CVG047dfm$CVG14V54408
Days_post <- "25"
Genus <- CVG047dfm$Genus
fillseq <- CVG047dfm$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   

#time point 4
ID <- "CVG047"
OTUs<- CVG047dfm$OTU
Count <- CVG047dfm$CVG14V54438
Days_post <- "31"
Genus <- CVG047dfm$Genus
fillseq <- CVG047dfm$fillseq
temp4 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp4 <- temp4[!(temp4$Count==0),]   
#t4 the fourth time point  

#time point 5
ID <- "CVG047"
OTUs<- CVG047dfm$OTU
Count <- CVG047dfm$CVG14V54433
Days_post <- "35"
Genus <- CVG047dfm$Genus
fillseq <- CVG047dfm$fillseq
temp5 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp5 <- temp5[!(temp5$Count==0),]   
#t5 the fifth time point  

#time point 6
ID <- "CVG047"
OTUs<- CVG047dfm$OTU
Count <- CVG047dfm$CVG14V54468
Days_post <- "60"
Genus <- CVG047dfm$Genus
fillseq <- CVG047dfm$fillseq
temp6 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp6 <- temp6[!(temp6$Count==0),]   
#t6 the sixth time point  

#time point 7
ID <- "CVG047"
OTUs<- CVG047dfm$OTU
Count <- CVG047dfm$CVG14V54517
Days_post <- "90"
Genus <- CVG047dfm$Genus
fillseq <- CVG047dfm$fillseq
temp7 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp7 <- temp7[!(temp7$Count==0),]   
#t7 the seventh time point  

#time point 8
ID <- "CVG047"
OTUs<- CVG047dfm$OTU
Count <- CVG047dfm$CVG14V54602
Days_post <- "180"
Genus <- CVG047dfm$Genus
fillseq <- CVG047dfm$fillseq
temp8 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp8 <- temp8[!(temp8$Count==0),]   
#t8 the eighth time point  

#time point 9
ID <- "CVG047"
OTUs<- CVG047dfm$OTU
Count <- CVG047dfm$CVG14V54627
Days_post <- "242"
Genus <- CVG047dfm$Genus
fillseq <- CVG047dfm$fillseq
temp9 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp9 <- temp9[!(temp9$Count==0),]   
#t9 the ninth time point 

temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod
temp4.mod <- temp4
temp5.mod <- temp5
temp6.mod <- temp6
temp7.mod <- temp7
temp8.mod <- temp8
temp9.mod <- temp9


# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages
temp4.mod$Count <- (100/sum(temp4.mod$Count))*temp4.mod$Count
temp5.mod$Count <- (100/sum(temp5.mod$Count))*temp5.mod$Count
temp6.mod$Count <- (100/sum(temp6.mod$Count))*temp6.mod$Count
temp7.mod$Count <- (100/sum(temp7.mod$Count))*temp7.mod$Count
temp8.mod$Count <- (100/sum(temp8.mod$Count))*temp8.mod$Count
temp9.mod$Count <- (100/sum(temp9.mod$Count))*temp9.mod$Count

stackedSharedGenus47 <- rbind(temp1.mod, temp2.mod, temp3.mod, temp4.mod, temp5.mod, temp6.mod, temp7.mod, temp8.mod, temp9.mod) #add together shared sequences

#107
fillseq <- seq(1, length(CVG017dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG017dfm <- CVG017dfm[order(CVG017dfm$Genus),]

CVG017dfm$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes



#time point 1
ID <- "CVG017"
OTUs<- CVG017dfm$OTU
Count <- CVG017dfm$CVG14V54122
Days_post <- "-6"
Genus <- CVG017dfm$Genus
fillseq <- CVG017dfm$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG017"
OTUs<- CVG017dfm$OTU
Count <- CVG017dfm$CVG14V54156
Days_post <- "1"
Genus <- CVG017dfm$Genus
fillseq <- CVG017dfm$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG017"
OTUs<- CVG017dfm$OTU
Count <- CVG017dfm$CVG14V54194
Days_post <- "35"
Genus <- CVG017dfm$Genus
fillseq <- CVG017dfm$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   

#time point 4
ID <- "CVG017"
OTUs<- CVG017dfm$OTU
Count <- CVG017dfm$CVG14V54331
Days_post <- "147"
Genus <- CVG017dfm$Genus
fillseq <- CVG017dfm$fillseq
temp4 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp4 <- temp4[!(temp4$Count==0),]   
#t4 the fourth time point  

#time point 5
ID <- "CVG017"
OTUs<- CVG017dfm$OTU
Count <- CVG017dfm$CVG14V54407
Days_post <- "180"
Genus <- CVG017dfm$Genus
fillseq <- CVG017dfm$fillseq
temp5 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp5 <- temp5[!(temp5$Count==0),]   
#t5 the fifth time point 

temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod
temp4.mod <- temp4
temp5.mod <- temp5

# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages
temp4.mod$Count <- (100/sum(temp4.mod$Count))*temp4.mod$Count
temp5.mod$Count <- (100/sum(temp5.mod$Count))*temp5.mod$Count

stackedSharedGenus17 <- rbind(temp1.mod, temp2.mod, temp3.mod, temp4.mod, temp5.mod) #add together shared sequences

#119
fillseq <- seq(1, length(CVG019dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG019dfm <- CVG019dfm[order(CVG019dfm$Genus),]

CVG019dfm$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes



#time point 1
ID <- "CVG019"
OTUs<- CVG019dfm$OTU
Count <- CVG019dfm$CVG14V54220
Days_post <- "39"
Genus <- CVG019dfm$Genus
fillseq <- CVG019dfm$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG019"
OTUs<- CVG019dfm$OTU
Count <- CVG019dfm$CVG14V54242
Days_post <- "61"
Genus <- CVG019dfm$Genus
fillseq <- CVG019dfm$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG019"
OTUs<- CVG019dfm$OTU
Count <- CVG019dfm$CVG14V54269
Days_post <- "82"
Genus <- CVG019dfm$Genus
fillseq <- CVG019dfm$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   

#time point 4
ID <- "CVG019"
OTUs<- CVG019dfm$OTU
Count <- CVG019dfm$CVG14V54629
Days_post <- "370"
Genus <- CVG019dfm$Genus
fillseq <- CVG019dfm$fillseq
temp4 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp4 <- temp4[!(temp4$Count==0),]   
#t4 the fourth time point  
# create 1 entry for all non-shared sequences
temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod
temp4.mod <- temp4
# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages
temp4.mod$Count <- (100/sum(temp4.mod$Count))*temp4.mod$Count

stackedSharedGenus19<- rbind(temp1.mod, temp2.mod, temp3.mod, temp4.mod) #add together shared sequences

#021

fillseq <- seq(1, length(CVG021dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG021dfm <- CVG021dfm[order(CVG021dfm$Genus),]

CVG021dfm$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes



#time point 1
ID <- "CVG021"
OTUs<- CVG021dfm$OTU
Count <- CVG021dfm$CVG14V54182
Days_post <- "-7"
Genus <- CVG021dfm$Genus
fillseq <- CVG021dfm$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG021"
OTUs<- CVG021dfm$OTU
Count <- CVG021dfm$CVG14V54186
Days_post <- "0"
Genus <- CVG021dfm$Genus
fillseq <- CVG021dfm$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG021"
OTUs<- CVG021dfm$OTU
Count <- CVG021dfm$CVG14V54201
Days_post <- "16"
Genus <- CVG021dfm$Genus
fillseq <- CVG021dfm$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   

#time point 4
ID <- "CVG021"
OTUs<- CVG021dfm$OTU
Count <- CVG021dfm$CVG14V54212
Days_post <- "23"
Genus <- CVG021dfm$Genus
fillseq <- CVG021dfm$fillseq
temp4 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp4 <- temp4[!(temp4$Count==0),]   
#t4 the fourth time point  

# create 1 entry for all non-shared sequences
temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod
temp4.mod <- temp4
# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages
temp4.mod$Count <- (100/sum(temp4.mod$Count))*temp4.mod$Count

stackedSharedGenus21 <- rbind(temp1.mod, temp2.mod, temp3.mod, temp4.mod) #add together shared sequences

#028
fillseq <- seq(1, length(CVG028dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG028dfm <- CVG028dfm[order(CVG028dfm$Genus),]

CVG028dfm$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes



#time point 1
ID <- "CVG028"
OTUs<- CVG028dfm$OTU
Count <- CVG028dfm$CVG14V54224
Days_post <- "-13"
Genus <- CVG028dfm$Genus
fillseq <- CVG028dfm$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG028"
OTUs<- CVG028dfm$OTU
Count <- CVG028dfm$CVG14V54232
Days_post <- "1"
Genus <- CVG028dfm$Genus
fillseq <- CVG028dfm$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG028"
OTUs<- CVG028dfm$OTU
Count <- CVG028dfm$CVG14V54277
Days_post <- "41"
Genus <- CVG028dfm$Genus
fillseq <- CVG028dfm$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   

#time point 4
ID <- "CVG028"
OTUs<- CVG028dfm$OTU
Count <- CVG028dfm$CVG14V54311
Days_post <- "65"
Genus <- CVG028dfm$Genus
fillseq <- CVG028dfm$fillseq
temp4 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp4 <- temp4[!(temp4$Count==0),]   
#t4 the fourth time point  

#time point 5
ID <- "CVG028"
OTUs<- CVG028dfm$OTU
Count <- CVG028dfm$CVG14V54600
Days_post <- "281"
Genus <- CVG028dfm$Genus
fillseq <- CVG028dfm$fillseq
temp5 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp5 <- temp5[!(temp5$Count==0),]   

# create 1 entry for all non-shared sequences
temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod
temp4.mod <- temp4
temp5.mod <- temp5

# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages
temp4.mod$Count <- (100/sum(temp4.mod$Count))*temp4.mod$Count
temp5.mod$Count <- (100/sum(temp5.mod$Count))*temp5.mod$Count

stackedSharedGenus28 <- rbind(temp1.mod, temp2.mod, temp3.mod, temp4.mod, temp5.mod) #add together shared sequences

#041
fillseq <- seq(1, length(CVG041dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG041dfm <- CVG041dfm[order(CVG041dfm$Genus),]

CVG041dfm$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes


#time point 1
ID <- "CVG041"
OTUs<- CVG041dfm$OTU
Count <- CVG041dfm$CVG14V54338
Days_post <- "1"
Genus <- CVG041dfm$Genus
fillseq <- CVG041dfm$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG041"
OTUs<- CVG041dfm$OTU
Count <- CVG041dfm$CVG14V54371
Days_post <- "16"
Genus <- CVG041dfm$Genus
fillseq <- CVG041dfm$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG041"
OTUs<- CVG041dfm$OTU
Count <- CVG041dfm$CVG14V54405
Days_post <- "37"
Genus <- CVG041dfm$Genus
fillseq <- CVG041dfm$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   

#time point 4
ID <- "CVG041"
OTUs<- CVG041dfm$OTU
Count <- CVG041dfm$CVG14V54457
Days_post <- "58"
Genus <- CVG041dfm$Genus
fillseq <- CVG041dfm$fillseq
temp4 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp4 <- temp4[!(temp4$Count==0),]   
#t4 the fourth time point  

#time point 5
ID <- "CVG041"
OTUs<- CVG041dfm$OTU
Count <- CVG041dfm$CVG14V54540
Days_post <- "120"
Genus <- CVG041dfm$Genus
fillseq <- CVG041dfm$fillseq
temp5 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp5 <- temp5[!(temp5$Count==0),]   
#t5 the fifth time point  

#time point 6
ID <- "CVG041"
OTUs<- CVG041dfm$OTU
Count <- CVG041dfm$CVG14V54551
Days_post <- "134"
Genus <- CVG041dfm$Genus
fillseq <- CVG041dfm$fillseq
temp6 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp6 <- temp6[!(temp6$Count==0),]   
#t6 the sixth time point  

#time point 7
ID <- "CVG041"
OTUs<- CVG041dfm$OTU
Count <- CVG041dfm$CVG14V54570
Days_post <- "150"
Genus <- CVG041dfm$Genus
fillseq <- CVG041dfm$fillseq
temp7 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp7 <- temp7[!(temp7$Count==0),]   
#t7 the seventh time point
# create 1 entry for all non-shared sequences
temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod
temp4.mod <- temp4
temp5.mod <- temp5
temp6.mod <- temp6
temp7.mod <- temp7
# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages
temp4.mod$Count <- (100/sum(temp4.mod$Count))*temp4.mod$Count
temp5.mod$Count <- (100/sum(temp5.mod$Count))*temp5.mod$Count
temp6.mod$Count <- (100/sum(temp6.mod$Count))*temp6.mod$Count
temp7.mod$Count <- (100/sum(temp7.mod$Count))*temp7.mod$Count

stackedSharedGenus41 <- rbind(temp1.mod, temp2.mod, temp3.mod, temp4.mod, temp5.mod, temp6.mod, temp7.mod) #add together shared sequences

#042
fillseq <- seq(1, length(CVG042dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG042dfm <- CVG042dfm[order(CVG042dfm$Genus),]

CVG042dfm$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes



#time point 1
ID <- "CVG042"
OTUs<- CVG042dfm$OTU
Count <- CVG042dfm$CVG14V54363
Days_post <- "12"
Genus <- CVG042dfm$Genus
fillseq <- CVG042dfm$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG042"
OTUs<- CVG042dfm$OTU
Count <- CVG042dfm$CVG14V54389
Days_post <- "20"
Genus <- CVG042dfm$Genus
fillseq <- CVG042dfm$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG042"
OTUs<- CVG042dfm$OTU
Count <- CVG042dfm$CVG14V54437
Days_post <- "34"
Genus <- CVG042dfm$Genus
fillseq <- CVG042dfm$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   

#time point 4
ID <- "CVG042"
OTUs<- CVG042dfm$OTU
Count <- CVG042dfm$CVG14V54513
Days_post <- "88"
Genus <- CVG042dfm$Genus
fillseq <- CVG042dfm$fillseq
temp4 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp4 <- temp4[!(temp4$Count==0),]   
#t4 the fourth time point  

#time point 5
ID <- "CVG042"
OTUs<- CVG042dfm$OTU
Count <- CVG042dfm$CVG14V54581
Days_post <- "158"
Genus <- CVG042dfm$Genus
fillseq <- CVG042dfm$fillseq
temp5 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp5 <- temp5[!(temp5$Count==0),]   
#t5 the fifth time point  
# create 1 entry for all non-shared sequences
temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod
temp4.mod <- temp4
temp5.mod <- temp5
# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages
temp4.mod$Count <- (100/sum(temp4.mod$Count))*temp4.mod$Count
temp5.mod$Count <- (100/sum(temp5.mod$Count))*temp5.mod$Count

stackedSharedGenus42 <- rbind(temp1.mod, temp2.mod, temp3.mod, temp4.mod, temp5.mod) #add together shared sequences

#046
fillseq <- seq(1, length(CVG046dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG046dfm <- CVG046dfm[order(CVG046dfm$Genus),]

CVG046dfm$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes



#time point 1
ID <- "CVG046"
OTUs<- CVG046dfm$OTU
Count <- CVG046dfm$CVG14V54333
Days_post <- "-7"
Genus <- CVG046dfm$Genus
fillseq <- CVG046dfm$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG046"
OTUs<- CVG046dfm$OTU
Count <- CVG046dfm$CVG14V54395
Days_post <- "19"
Genus <- CVG046dfm$Genus
fillseq <- CVG046dfm$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG046"
OTUs<- CVG046dfm$OTU
Count <- CVG046dfm$CVG14V54443
Days_post <- "37"
Genus <- CVG046dfm$Genus
fillseq <- CVG046dfm$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   

#time point 4
ID <- "CVG046"
OTUs<- CVG046dfm$OTU
Count <- CVG046dfm$CVG14V54485
Days_post <- "62"
Genus <- CVG046dfm$Genus
fillseq <- CVG046dfm$fillseq
temp4 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp4 <- temp4[!(temp4$Count==0),]   
#t4 the fourth time point 
# create 1 entry for all non-shared sequences
temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod
temp4.mod <- temp4
# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages
temp4.mod$Count <- (100/sum(temp4.mod$Count))*temp4.mod$Count


stackedSharedGenus46 <- rbind(temp1.mod, temp2.mod, temp3.mod, temp4.mod) #add together shared sequences

#048
fillseq <- seq(1, length(CVG048dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG048dfm <- CVG048dfm[order(CVG048dfm$Genus),]

CVG048dfm$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes

#time point 1
ID <- "CVG048"
OTUs<- CVG048dfm$OTU
Count <- CVG048dfm$CVG14V54458
Days_post <- "7"
Genus <- CVG048dfm$Genus
fillseq <- CVG048dfm$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG048"
OTUs<- CVG048dfm$OTU
Count <- CVG048dfm$CVG14V54451
Days_post <- "9"
Genus <- CVG048dfm$Genus
fillseq <- CVG048dfm$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG048"
OTUs<- CVG048dfm$OTU
Count <- CVG048dfm$CVG14V54601
Days_post <- "153"
Genus <- CVG048dfm$Genus
fillseq <- CVG048dfm$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   

temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod
# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages


stackedSharedGenus48 <- rbind(temp1.mod, temp2.mod, temp3.mod) #add together shared sequences


#052
fillseq <- seq(1, length(CVG052dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG052dfm <- CVG052dfm[order(CVG052dfm$Genus),]

CVG052dfm$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes


#time point 1
ID <- "CVG052"
OTUs<- CVG052dfm$OTU
Count <- CVG052dfm$CVG14V54474
Days_post <- "0"
Genus <- CVG052dfm$Genus
fillseq <- CVG052dfm$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG052"
OTUs<- CVG052dfm$OTU
Count <- CVG052dfm$CVG14V54456
Days_post <- "7"
Genus <- CVG052dfm$Genus
fillseq <- CVG052dfm$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG052"
OTUs<- CVG052dfm$OTU
Count <- CVG052dfm$CVG14V54545
Days_post <- "62"
Genus <- CVG052dfm$Genus
fillseq <- CVG052dfm$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   


temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod
# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages


stackedSharedGenus52 <- rbind(temp1.mod, temp2.mod, temp3.mod) #add together shared sequences

#054
fillseq <- seq(1, length(CVG054dfm$OTU)) #make list of numbers corresponding with number of unique clonotypes

CVG054dfm <- CVG054dfm[order(CVG054dfm$Genus),]

CVG054dfm$fillseq <- fillseq #add numbers from fillseq to data frame with unique clonotypes


#time point 1
ID <- "CVG054"
OTUs<- CVG054dfm$OTU
Count <- CVG054dfm$CVG14V54430
Days_post <- "-7"
Genus <- CVG054dfm$Genus
fillseq <- CVG054dfm$fillseq
temp1 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F) #t0 first time point
temp1 <- temp1[!(temp1$Count==0),]

#time point 2
ID <- "CVG054"
OTUs<- CVG054dfm$OTU
Count <- CVG054dfm$CVG14V54470
Days_post <- "6"
Genus <- CVG054dfm$Genus
fillseq <- CVG054dfm$fillseq
temp2 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp2 <- temp2[!(temp2$Count==0),] #t2 the second time point   

#time point 3
ID <- "CVG054"
OTUs<- CVG054dfm$OTU
Count <- CVG054dfm$CVG14V54489
Days_post <- "28"
Genus <- CVG054dfm$Genus
fillseq <- CVG054dfm$fillseq
temp3 <- data.frame(ID, OTUs, Count, Days_post, Genus, fillseq, stringsAsFactors = F)
temp3 <- temp3[!(temp3$Count==0),] #t3 the third time point   



temp1.mod <- temp1 #duplicates temp1 and saves it as temp1.mod
temp2.mod <- temp2
temp3.mod <- temp3 #duplicates temp3 and saves it as temp3.mod
# normalise sequence frequency
temp1.mod$Count <- (100/sum(temp1.mod$Count))*temp1.mod$Count #turns counts into percentages
temp2.mod$Count <- (100/sum(temp2.mod$Count))*temp2.mod$Count
temp3.mod$Count <- (100/sum(temp3.mod$Count))*temp3.mod$Count #turns counts into percentages


stackedSharedGenus54 <- rbind(temp1.mod, temp2.mod, temp3.mod) #add together shared sequences
