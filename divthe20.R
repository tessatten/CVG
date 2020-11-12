
#########################################
#time vs gini  in bins


good.shapes = c(65:82, 18, 20)
p1 = ggplot(diversities_the20, aes(x=factor(Bin), y=Gini_coefficient, color=ID, fill=ID))+
  geom_point(size=6) + labs(title = "Gini coefficient ", x ="Day after transplant (by bin)", y = "Gini coefficient", color = "Individual") +   theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=24, face="bold"),
    axis.title.x = element_text(color="black", size=20, face="bold"),
    axis.title.y = element_text(color="black", size=20, face="bold"),
    axis.text=element_text(size=20),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  ) + theme(axis.text.x = element_text(hjust = 0.5,size=22)) + guides(fill=FALSE, color=guide_legend(ncol=1)) +
  geom_boxplot(data = p1$data, aes(x = factor(Bin), y = Gini_coefficient, color = NULL, group = Bin), 
               alpha = 0.1) 
ggsave("TimeAndGiniBinthe20.pdf", width = 40, height = 20, units = c('cm'))
p1
############################################################
#########################################
#time vs shannon  in bins


good.shapes = c(65:82, 18, 20)
p2 = ggplot(diversities_the20, aes(x=factor(Bin), y=Shannon, color=ID, fill=ID))+
  geom_point(size=6) + labs(title = "Shannon entropy ", x ="Day after transplant (by bin)", y = "Shannon entropy", color = "Individual") +   theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=24, face="bold"),
    axis.title.x = element_text(color="black", size=20, face="bold"),
    axis.title.y = element_text(color="black", size=20, face="bold"),
    axis.text=element_text(size=20),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  ) + theme(axis.text.x = element_text(hjust = 0.5,size=22)) + guides(fill=FALSE, color=guide_legend(ncol=1)) +
  geom_boxplot(data = p2$data, aes(x = factor(Bin), y = Shannon, color = NULL, group = Bin), 
               alpha = 0.1)
p2
ggsave("TimeAndShannonBinhe20.pdf", width = 40, height = 20, units = c('cm'))
############################################################
#########################################
#time vs observed  in bins


good.shapes = c(65:82, 18, 20)
p3 = ggplot(diversities_the20, aes(x=factor(Bin), y=Observed, color=ID, fill=ID))+
  geom_point(size=6) + labs(title = "Observed OTUs", x ="Day after transplant (by bin)", y = "Observed OTUs", color = "Individual") +   theme_bw() + guides(fill=FALSE)+ theme(
    plot.title = element_text(color="black", size=24, face="bold"),
    axis.title.x = element_text(color="black", size=20, face="bold"),
    axis.title.y = element_text(color="black", size=20, face="bold"),
    axis.text=element_text(size=20),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  ) + theme(axis.text.x = element_text(hjust = 0.5,size=22)) + guides(fill=FALSE, color=guide_legend(ncol=1)) +
  geom_boxplot(data = p3$data, aes(x = factor(Bin), y = Observed, color = NULL, group = Bin), 
               alpha = 0.1)
p3
ggsave("TimeAndObservedBinhe20.pdf", width = 40, height = 20, units = c('cm'))
############################################################

p3 / p2 /
  p1 + plot_layout(guides = 'collect', ncol = 1)


ggsave("DivCVGthe20Bin.pdf", width = 35, height = 50, units = c('cm'))



survival_phyloseq = subset_samples(final_genus_CVG, Survival != "NA")
final_genus_CVG

head(sample_data(survival_phyloseq)$Pre_or_post, 20)
pre_post_phyloseq = subset_samples(survival_phyloseq, Pre_or_post != "NA")
pre_post_phyloseq


pre_post_phyloseq <- prune_samples(sample_sums(pre_post_phyloseq) > 400, pre_post_phyloseq)
pre_post_phyloseq

diagdds = phyloseq_to_deseq2(pre_post_phyloseq, ~ Pre_or_post)
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
sigtab = cbind(as(sigtab, "data.frame"), as(tax_table(pre_post_phyloseq)[rownames(sigtab), ], "matrix"))
head(sigtab)
res
sigtab

#posigtab = sigtab[sigtab[, "log2FoldChange"] > 0, ]
#posigtab = posigtab[, c("baseMean", "log2FoldChange", "lfcSE", "padj", "Phylum", "Class", "Family", "Genus")]
#posigtab

library("ggplot2")
theme_set(theme_bw())
sigtabgen = subset(sigtab, !is.na(Genus))
# Phylum order
#x = tapply(sigtabgen$log2FoldChange, sigtabgen$Phylum, function(x) max(x))
#x = sort(x, TRUE)
#sigtabgen$Phylum = factor(as.character(sigtabgen$Phylum), levels=names(x))
# Genus order
x = tapply(sigtabgen$log2FoldChange, sigtabgen$Genus, function(x) max(x))
x = sort(x, TRUE)
sigtabgen$Genus = factor(as.character(sigtabgen$Genus), levels=names(x))
prepost = ggplot(sigtabgen, aes(y=Genus, x=log2FoldChange, color=Phylum)) + 
  geom_vline(xintercept = 0.0, color = "gray", size = 0.5) +
  geom_point(size=15) + 
  theme(axis.text.x = element_text(angle = -90, hjust = 0, vjust=0.5))+
  theme_bw() + guides(fill=FALSE, color=FALSE)+ theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=28, face="bold"),
    axis.title.y = element_text(color="black", size=28, face="bold"),
    axis.text=element_text(size=26),
    legend.title = element_text(color = "black", size = 26),
    legend.text = element_text(color = "black", size = 24)
  ) + labs(title = "Pre-transplant compared to post-transplant", x = "Difference in abundance (log2FoldChange)", y = "Genus") +
  scale_color_manual(labels = c("Firmicutes"), values = c("#6EBBD9")) 
ggsave("DESeq2onPrePostsighmm.pdf", width = 37, height = 30, units = c('cm'))


res = results(diagdds)
res = res[order(res$padj, na.last=NA), ]
alpha = 0.99
sigtab = res[(res$padj < alpha), ]
sigtab = cbind(as(sigtab, "data.frame"), as(tax_table(pre_post_phyloseq)[rownames(sigtab), ], "matrix"))
head(sigtab)
res
sigtab


sigtabgen = subset(sigtab, !is.na(Genus))
# Phylum order
#x = tapply(sigtabgen$log2FoldChange, sigtabgen$Phylum, function(x) max(x))
#x = sort(x, TRUE)
#sigtabgen$Phylum = factor(as.character(sigtabgen$Phylum), levels=names(x))
# Genus order
x = tapply(sigtabgen$log2FoldChange, sigtabgen$Genus, function(x) max(x))
x = sort(x, TRUE)
sigtabgen$Genus = factor(as.character(sigtabgen$Genus), levels=names(x))
prepostno = ggplot(sigtabgen, aes(y=Genus, x=log2FoldChange, color=Phylum)) + 
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
  ) + labs(title = "Pre-transplant compared to post-transplant (no sig)", x = "Difference in abundance (log2FoldChange)", y = "Genus") +
  scale_color_manual(labels = c("Actinobacteria","Bacteroidetes", "Firmicutes","Proteobacteria"), values = c("#B76367", "#B388B3", "#6EBBD9",  "#61E3B9")) 
ggsave("DESeq2onPrePostPsofighmm.pdf", width = 37, height = 30, units = c('cm'))

prepost + prepostno + plot_layout(guides = 'collect', ncol = 1)

ggsave("prepostDeseqhmm.pdf", width = 47, height = 47, units = c('cm'))
