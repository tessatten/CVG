library("phyloseq"); packageVersion("phyloseq")
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("DESeq2")
library("DESeq2")
packageVersion("DESeq2")

#i am going to look at PRE and POST
sample_data_table <- read.csv(file = "CVG_metadata_FEBRUARY.csv", stringsAsFactors = FALSE) #import metadata for samples (samples that worked)
#sample_data_table <- read.csv(file = "CVG_metadata_JULY.csv", stringsAsFactors = FALSE) #import metadata for samples (samples that worked)

sample_data_table$Sample_ID <- paste("CVG", sample_data_table$Sample_ID, sep="")

sample_matrix <- as.matrix(sample_data_table) #make it a matrix

rownames(sample_matrix) <- sample_data_table$Sample_ID #change column names, it adds an X in front of the number
sample_matrix <- sample_matrix[,-1]  #remove null column
sample_matrix <- as.data.frame(sample_matrix) #make it a data frame again
#sam_data is depreciated so switched to sample_data
#required a data frame so switched it back to a data frame

sample_matrix$Shannon <- as.numeric(as.character(sample_matrix$Shannon))
sample_matrix$Observed <- as.numeric(as.character(sample_matrix$Observed))

CVG_sample_table <- sample_data(sample_matrix) #import to phyloseq

#it does import!!!
#but does not import ntc etc
class(sample_data_table$Shannon)

CVG_latest_phyloseq <- merge_phyloseq(CVG_otu_table, CVG_tax_table, CVG_sample_table) #merge phyloseq objects
CVG_genus_phyloseq = tax_glom(CVG_phyloseq_decontaminated, taxrank = "Genus")
#this is a pyuloseq obj with all contaminants removed and agglomerated at genus level

head(sample_data(CVG_latest_phyloseq)$Pre_or_post, 25)

diagdds = phyloseq_to_deseq2(CVG_latest_phyloseq, ~ Pre_or_post)
 estimateSizeFactors(diagdds)
diagdds = DESeq(diagdds, test="Wald", fitType="parametric")





##########################################3
#here i'm going to try it on genus-agglomerated data



CVG_latest_phyloseq
head(sample_data(CVG_latest_phyloseq)$Pre_or_post, 20)
CVG_latest_phyloseq = subset_samples(CVG_latest_phyloseq, Pre_or_post != "NA")
CVG_latest_phyloseq


CVG_latest_phyloseq <- prune_samples(sample_sums(CVG_latest_phyloseq) > 400, CVG_latest_phyloseq)
CVG_latest_phyloseq

diagdds = phyloseq_to_deseq2(CVG_latest_phyloseq, ~ Pre_or_post)
# calculate geometric means prior to estimate size factors
gm_mean = function(x, na.rm=TRUE){
  exp(sum(log(x[x > 0]), na.rm=na.rm) / length(x))
}
geoMeans = apply(counts(diagdds), 1, gm_mean)
diagdds = estimateSizeFactors(diagdds, geoMeans = geoMeans)
diagdds = DESeq(diagdds, fitType="local")

res = results(diagdds)
res = res[order(res$padj, na.last=NA), ]
alpha = 0.01
sigtab = res[(res$padj < alpha), ]
sigtab = cbind(as(sigtab, "data.frame"), as(tax_table(CVG_latest_phyloseq)[rownames(sigtab), ], "matrix"))
head(sigtab)
res
sigtab

posigtab = sigtab[sigtab[, "log2FoldChange"] > 0, ]
posigtab = posigtab[, c("baseMean", "log2FoldChange", "lfcSE", "padj", "Phylum", "Class", "Family", "Genus")]
posigtab

library("ggplot2")
theme_set(theme_bw())
sigtabgen = subset(sigtab, !is.na(Genus))
# Phylum order
x = tapply(sigtabgen$log2FoldChange, sigtabgen$Phylum, function(x) max(x))
x = sort(x, TRUE)
sigtabgen$Phylum = factor(as.character(sigtabgen$Phylum), levels=names(x))
# Genus order
x = tapply(sigtabgen$log2FoldChange, sigtabgen$Genus, function(x) max(x))
x = sort(x, TRUE)
sigtabgen$Genus = factor(as.character(sigtabgen$Genus), levels=names(x))
ggplot(sigtabgen, aes(y=Genus, x=log2FoldChange, color=Phylum)) + 
  geom_vline(xintercept = 0.0, color = "gray", size = 0.5) +
  geom_point(size=15) + 
  theme(axis.text.x = element_text(angle = -90, hjust = 0, vjust=0.5))+
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  ) + labs(title = "", x = "Difference in abundance (log2FoldChange)", y = "Genus") +
  scale_color_manual(labels = c("Firmicutes"), values = c("#E77EA1")) 
ggsave("DESeq2onPrePost.pdf", width = 37, height = 30, units = c('cm'))

plotMA(res, ylim=c(-6,6))

gp.ch = subset_taxa(CVG_latest_phyloseq, Family == "Staphylococcaceae")
plot_bar(gp.ch, x="Pre_or_post", fill="Genus")

d <- plotCounts(diagdds, gene=which.min(res$padj), intgroup="Pre_or_post", 
                returnData=TRUE)
library("ggplot2")
ggplot(d, aes(x=Pre_or_post, y=count)) + 
  geom_point(position=position_jitter(w=0.1,h=0)) + 
  scale_y_log10(breaks=c(25,100,400))


#here i will plot all p=0/9


res = results(diagdds)
res = res[order(res$padj, na.last=NA), ]
alpha = 0.9
sigtab = res[(res$padj < alpha), ]
sigtab = cbind(as(sigtab, "data.frame"), as(tax_table(CVG_latest_phyloseq)[rownames(sigtab), ], "matrix"))
head(sigtab)
res
sigtab


sigtabgen = subset(sigtab, !is.na(Genus))
# Phylum order
x = tapply(sigtabgen$log2FoldChange, sigtabgen$Phylum, function(x) max(x))
x = sort(x, TRUE)
sigtabgen$Phylum = factor(as.character(sigtabgen$Phylum), levels=names(x))
# Genus order
x = tapply(sigtabgen$log2FoldChange, sigtabgen$Genus, function(x) max(x))
x = sort(x, TRUE)
sigtabgen$Genus = factor(as.character(sigtabgen$Genus), levels=names(x))
ggplot(sigtabgen, aes(y=Genus, x=log2FoldChange, color=Phylum)) + 
  geom_vline(xintercept = 0.0, color = "gray", size = 0.5) +
  geom_point(size=12) + 
  theme(axis.text.x = element_text(angle = -90, hjust = 0, vjust=0.5))+
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  ) + labs(title = "", x = "Difference in abundance (log2FoldChange)", y = "Genus") +
  scale_color_manual(labels = c("Actinobacteria","Bacteroides", "Firmicutes", "Proteobacteria", "Fusobacteria"), values = c("#B76367", "#B388B3", "#6EBBD9", "#61E3B9",  "#D4F77C")) 
ggsave("DESeq2onPrePostP09.pdf", width = 37, height = 30, units = c('cm'))


################################################################
#now i am going to look at if the patient had diarrhoea



CVG_latest_phyloseq
head(sample_data(CVG_latest_phyloseq)$Does_the_patient_have_diarrhoea, 20)
CVG_latest_phyloseq = subset_samples(CVG_latest_phyloseq, Does_the_patient_have_diarrhoea != "NotKnown")
CVG_latest_phyloseq


CVG_latest_phyloseq <- prune_samples(sample_sums(CVG_latest_phyloseq) > 400, CVG_latest_phyloseq)
CVG_latest_phyloseq

diagdds = phyloseq_to_deseq2(CVG_latest_phyloseq, ~ Does_the_patient_have_diarrhoea)
#diagdds$Does_the_patient_have_diarrhoea <- relevel(diagdds$Does_the_patient_have_diarrhoea, ref = "No")
#diagdds$Does_the_patient_have_diarrhoea <- factor(diagdds$Does_the_patient_have_diarrhoea, levels = c("Yes","No"))
# calculate geometric means prior to estimate size factors
gm_mean = function(x, na.rm=TRUE){
  exp(sum(log(x[x > 0]), na.rm=na.rm) / length(x))
}
geoMeans = apply(counts(diagdds), 1, gm_mean)
diagdds = estimateSizeFactors(diagdds, geoMeans = geoMeans)
diagdds = DESeq(diagdds, fitType="local")

res = results(diagdds)
res = res[order(res$padj, na.last=NA), ]
alpha = 0.01
sigtab = res[(res$padj < alpha), ]
sigtab = cbind(as(sigtab, "data.frame"), as(tax_table(CVG_latest_phyloseq)[rownames(sigtab), ], "matrix"))
head(sigtab)
res
sigtab

posigtab = sigtab[sigtab[, "log2FoldChange"] > 0, ]
posigtab = posigtab[, c("baseMean", "log2FoldChange", "lfcSE", "padj", "Phylum", "Class", "Family", "Genus")]
posigtab

library("ggplot2")
theme_set(theme_bw())
sigtabgen = subset(sigtab, !is.na(Genus))
# Phylum order
x = tapply(sigtabgen$log2FoldChange, sigtabgen$Phylum, function(x) max(x))
x = sort(x, TRUE)
sigtabgen$Phylum = factor(as.character(sigtabgen$Phylum), levels=names(x))
# Genus order
x = tapply(sigtabgen$log2FoldChange, sigtabgen$Genus, function(x) max(x))
x = sort(x, TRUE)
sigtabgen$Genus = factor(as.character(sigtabgen$Genus), levels=names(x))
ggplot(sigtabgen, aes(y=Genus, x=log2FoldChange, color=Phylum)) + 
  geom_vline(xintercept = 0.0, color = "gray", size = 0.5) +
  geom_point(size=15) + 
  theme(axis.text.x = element_text(angle = -90, hjust = 0, vjust=0.5))+
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  ) + labs(title = "", x = "Difference in abundance (log2FoldChange)", y = "Genus") +
  scale_color_manual(labels = c("Firmicutes","Proteobacteria"), values = c("#6EBBD9", ("#61E3B9")))
ggsave("DESeq2onDiarrhoea.pdf", width = 37, height = 30, units = c('cm'))

plotMA(res, ylim=c(-6,6))


gp.ch = subset_taxa(CVG_latest_phyloseq, Family == "Enterococcaceae")
plot_bar(gp.ch, x="Does_the_patient_have_diarrhoea", fill="Genus")

res = results(diagdds)
res = res[order(res$padj, na.last=NA), ]
alpha = 0.8
sigtab = res[(res$padj < alpha), ]
sigtab = cbind(as(sigtab, "data.frame"), as(tax_table(CVG_latest_phyloseq)[rownames(sigtab), ], "matrix"))
head(sigtab)
res
sigtab

posigtab = sigtab[sigtab[, "log2FoldChange"] > 0, ]
posigtab = posigtab[, c("baseMean", "log2FoldChange", "lfcSE", "padj", "Phylum", "Class", "Family", "Genus")]
posigtab

library("ggplot2")
theme_set(theme_bw())
sigtabgen = subset(sigtab, !is.na(Genus))
# Phylum order
x = tapply(sigtabgen$log2FoldChange, sigtabgen$Phylum, function(x) max(x))
x = sort(x, TRUE)
sigtabgen$Phylum = factor(as.character(sigtabgen$Phylum), levels=names(x))
# Genus order
x = tapply(sigtabgen$log2FoldChange, sigtabgen$Genus, function(x) max(x))
x = sort(x, TRUE)
sigtabgen$Genus = factor(as.character(sigtabgen$Genus), levels=names(x))
ggplot(sigtabgen, aes(y=Genus, x=log2FoldChange, color=Phylum)) + 
  geom_vline(xintercept = 0.0, color = "gray", size = 0.5) +
  geom_point(size=15) + 
  theme(axis.text.x = element_text(angle = -90, hjust = 0, vjust=0.5))+
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  ) + labs(title = "", x = "Difference in abundance (log2FoldChange)", y = "Genus") +
  scale_color_manual(labels = c("Firmicutes","Proteobacteria"), values = c("#6EBBD9", ("#61E3B9")))
ggsave("DESeq2onDiarrhoea09.pdf", width = 37, height = 30, units = c('cm'))


################################################################
#now i am going to look at pre and post neutrophil engrafteyn



CVG_latest_phyloseq
head(sample_data(CVG_latest_phyloseq)$Pre_or_post_neutrophil, 20)
CVG_latest_phyloseq = subset_samples(CVG_latest_phyloseq, Pre_or_post_neutrophil != "NA")
CVG_latest_phyloseq


CVG_latest_phyloseq <- prune_samples(sample_sums(CVG_latest_phyloseq) > 400, CVG_latest_phyloseq)
CVG_latest_phyloseq

diagdds = phyloseq_to_deseq2(CVG_latest_phyloseq, ~ Pre_or_post_neutrophil)
#diagdds$Does_the_patient_have_diarrhoea <- relevel(diagdds$Does_the_patient_have_diarrhoea, ref = "No")
#diagdds$Does_the_patient_have_diarrhoea <- factor(diagdds$Does_the_patient_have_diarrhoea, levels = c("Yes","No"))
# calculate geometric means prior to estimate size factors
gm_mean = function(x, na.rm=TRUE){
  exp(sum(log(x[x > 0]), na.rm=na.rm) / length(x))
}
geoMeans = apply(counts(diagdds), 1, gm_mean)
diagdds = estimateSizeFactors(diagdds, geoMeans = geoMeans)
diagdds = DESeq(diagdds, fitType="local")

res = results(diagdds)
res = res[order(res$padj, na.last=NA), ]
alpha = 0.01
sigtab = res[(res$padj < alpha), ]
sigtab = cbind(as(sigtab, "data.frame"), as(tax_table(CVG_latest_phyloseq)[rownames(sigtab), ], "matrix"))
head(sigtab)
res
sigtab

posigtab = sigtab[sigtab[, "log2FoldChange"] > 0, ]
posigtab = posigtab[, c("baseMean", "log2FoldChange", "lfcSE", "padj", "Phylum", "Class", "Family", "Genus")]
posigtab

library("ggplot2")
theme_set(theme_bw())
sigtabgen = subset(sigtab, !is.na(Genus))
# Phylum order
x = tapply(sigtabgen$log2FoldChange, sigtabgen$Phylum, function(x) max(x))
x = sort(x, TRUE)
sigtabgen$Phylum = factor(as.character(sigtabgen$Phylum), levels=names(x))
# Genus order
x = tapply(sigtabgen$log2FoldChange, sigtabgen$Genus, function(x) max(x))
x = sort(x, TRUE)
sigtabgen$Genus = factor(as.character(sigtabgen$Genus), levels=names(x))
ggplot(sigtabgen, aes(y=Genus, x=log2FoldChange, color=Phylum)) + 
  geom_vline(xintercept = 0.0, color = "gray", size = 0.5) +
  geom_point(size=15) + 
  theme(axis.text.x = element_text(angle = -90, hjust = 0, vjust=0.5))+
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  ) + labs(title = "", x = "Difference in abundance (log2FoldChange)", y = "Genus") +
scale_color_manual(labels = c("Bacteroides", "Proteobacteria"), values = c("#B388B3",  "#61E3B9")) 
ggsave("DESeq2onPrePostNeutrophil.pdf", width = 37, height = 30, units = c('cm'))

gp.ch = subset_taxa(CVG_latest_phyloseq, Family == "Enterobacteriaceae")
plot_bar(gp.ch, x="Pre_or_post_neutrophil", fill="Genus")


res = results(diagdds)
res = res[order(res$padj, na.last=NA), ]
alpha = 0.99
sigtab = res[(res$padj < alpha), ]
sigtab = cbind(as(sigtab, "data.frame"), as(tax_table(CVG_latest_phyloseq)[rownames(sigtab), ], "matrix"))
head(sigtab)
res
sigtab

posigtab = sigtab[sigtab[, "log2FoldChange"] > 0, ]
posigtab = posigtab[, c("baseMean", "log2FoldChange", "lfcSE", "padj", "Phylum", "Class", "Family", "Genus")]
posigtab

library("ggplot2")
theme_set(theme_bw())
sigtabgen = subset(sigtab, !is.na(Genus))
# Phylum order
x = tapply(sigtabgen$log2FoldChange, sigtabgen$Phylum, function(x) max(x))
x = sort(x, TRUE)
sigtabgen$Phylum = factor(as.character(sigtabgen$Phylum), levels=names(x))
# Genus order
x = tapply(sigtabgen$log2FoldChange, sigtabgen$Genus, function(x) max(x))
x = sort(x, TRUE)
sigtabgen$Genus = factor(as.character(sigtabgen$Genus), levels=names(x))
ggplot(sigtabgen, aes(y=Genus, x=log2FoldChange, color=Phylum)) + 
  geom_vline(xintercept = 0.0, color = "gray", size = 0.5) +
  geom_point(size=15) + 
  theme(axis.text.x = element_text(angle = -90, hjust = 0, vjust=0.5))+
  theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  ) + labs(title = "", x = "Difference in abundance (log2FoldChange)", y = "Genus") +
  scale_color_manual(labels = c("Actinobacteria","Bacteroides", "Firmicutes", "Proteobacteria"), values = c("#B76367", "#B388B3", "#6EBBD9", "#61E3B9"))  
ggsave("DESeq2onPrePostNeutrophilP09.pdf", width = 37, height = 30, units = c('cm'))

plotMA(res, ylim=c(-6,6))


################################################################
#now i am going to look at AGE



CVG_latest_phyloseq
head(sample_data(CVG_latest_phyloseq)$Age_over_2_years, 20)
CVG_latest_phyloseq = subset_samples(CVG_latest_phyloseq, Age_over_2_years != "NA")
CVG_latest_phyloseq


CVG_latest_phyloseq <- prune_samples(sample_sums(CVG_latest_phyloseq) > 400, CVG_latest_phyloseq)
CVG_latest_phyloseq

diagdds = phyloseq_to_deseq2(CVG_latest_phyloseq, ~ Age_over_2_years)
#diagdds$Does_the_patient_have_diarrhoea <- relevel(diagdds$Does_the_patient_have_diarrhoea, ref = "No")
#diagdds$Does_the_patient_have_diarrhoea <- factor(diagdds$Does_the_patient_have_diarrhoea, levels = c("Yes","No"))
# calculate geometric means prior to estimate size factors
gm_mean = function(x, na.rm=TRUE){
  exp(sum(log(x[x > 0]), na.rm=na.rm) / length(x))
}
geoMeans = apply(counts(diagdds), 1, gm_mean)
diagdds = estimateSizeFactors(diagdds, geoMeans = geoMeans)
diagdds = DESeq(diagdds, fitType="local")

res = results(diagdds)
res = res[order(res$padj, na.last=NA), ]
alpha = 0.01
sigtab = res[(res$padj < alpha), ]
sigtab = cbind(as(sigtab, "data.frame"), as(tax_table(CVG_latest_phyloseq)[rownames(sigtab), ], "matrix"))
head(sigtab)
res
sigtab

posigtab = sigtab[sigtab[, "log2FoldChange"] > 0, ]
posigtab = posigtab[, c("baseMean", "log2FoldChange", "lfcSE", "padj", "Phylum", "Class", "Family", "Genus")]
posigtab

 + labs(title = "", x = "Difference in abundance (log2FoldChange)", y = "Genus") +
  scale_color_manual(labels = c("Bacteroides", "Proteobacteria"), values = c("#B388B3",  "#61E3B9")) 
ggsave("DESeq2onAGEl.pdf", width = 37, height = 30, units = c('cm'))

gp.ch = subset_taxa(CVG_latest_phyloseq, Family == "Enterobacteriaceae")
plot_line(gp.ch, x="Pre_or_post_neutrophil", fill="Genus")

