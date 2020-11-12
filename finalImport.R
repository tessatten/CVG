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


BiocManager::install("phyloseq")
source('http://bioconductor.org/biocLite.R')
biocLite('phyloseq')
a
yes
packageVersion('phyloseq')

otu_data_table <- read_csv(file = "CVG_otutable_updated_final.csv") #import otu table
#otu_data_table <- read_csv(file = "CVG_otutable_foranosim.csv") #import otu table

tax_data_table <- read_tsv(file = "CVG_taxatable_updated.tsv") #import taxa table

otu_data_matrix <- data.matrix(otu_data_table) #make the otu table into a matrix (it has to be a matrix)
rownames(otu_data_matrix) <- otu_data_table$OTU #relabel the column names at the OTU numbers
otu_data_matrix <- otu_data_matrix[,-1] #remove null column

CVG_otu_table <- otu_table(otu_data_matrix, taxa_are_rows = T) #turn OTU table into a phyloseq object

tax_matrix <- as.matrix(tax_data_table) #make the taxa table into a matrix (it has to be a matrix)
rownames(tax_matrix) <- tax_data_table$OTU #relabel the column names to be the OTU numbers
tax_matrix <- tax_matrix[,-1]  #remove null column

CVG_tax_table <- tax_table(tax_matrix)

#sample_data_table <- read.csv(file = "CVG_metadata_JULY.csv") #import metadata for samples (all samples)
sample_data_table <- read.csv(file = "CVG_metadata_MAY.csv", stringsAsFactors = FALSE) #import metadata for samples (samples that worked)
class(sample_data_table$Sample_bin)
sample_data_table$Sample_bin <- as.factor(sample_data_table$Sample_bin)
sample_data_table$Sample_ID <- paste("CVG", sample_data_table$Sample_ID, sep="")

sample_matrix <- as.matrix(sample_data_table) #make it a matrix

rownames(sample_matrix) <- sample_data_table$Sample_ID #change column names, it adds an X in front of the number
sample_matrix <- sample_matrix[,-1]  #remove null column
sample_matrix <- as.data.frame(sample_matrix) #make it a data frame again
#sam_data is depreciated so switched to sample_data
#required a data frame so switched it back to a data frame


CVG_sample_table <- sample_data(sample_matrix) #import to phyloseq
#it does import!!!
#but does not import ntc etc


final_OTU_CVG <- merge_phyloseq(CVG_otu_table, CVG_tax_table, CVG_sample_table)
final_genus_CVG <-tax_glom(final_OTU_CVG, taxrank = "Genus")


GP20 = subset_taxa(final_OTU_CVG, Genus=="Zymomonas")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Thermus")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Tepidiphilus")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Tepidimonas")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Spirosoma")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Rubrivivax")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Nitriliruptor")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Mitsuaria")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Methylophilus")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Methylobacterium")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Mesorhizobium")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Janibacter")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Hymenobacter")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Halomonas")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Desulfonauticus")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Curvibacter")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Caulobacter")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Brevundimonas")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Bradyrhizobium")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Anoxybacillus")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Agrobacterium")
GP20 = subset_taxa(final_OTU_CVG, Genus=="Achromobacter")

GP20 = subset_taxa(final_OTU_CVG, Genus=="Staphylococcus")
GP20