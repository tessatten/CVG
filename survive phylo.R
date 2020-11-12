

survival_yes_phyloseq = subset_samples(final_genus_CVG, Survival == "Yes")

survival_no_phyloseq = subset_samples(final_genus_CVG, Survival == "No")



survival_yes_phyloseq <- prune_samples(sample_sums(survival_yes_phyloseq) > 400, survival_yes_phyloseq)
survival_yes_phyloseq

diagdds = phyloseq_to_deseq2(survival_yes_phyloseq, ~ Pre_or_post)
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
sigtab = cbind(as(sigtab, "data.frame"), as(tax_table(survival_yes_phyloseq)[rownames(sigtab), ], "matrix"))
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
  ) + labs(title = "Pre-transplant compared to post-transplant (survived)", x = "Difference in abundance (log2FoldChange)", y = "Genus") +
  scale_color_manual(labels = c("Firmicutes"), values = c("#6EBBD9")) 
ggsave("DESeq2onPrePostsigSurviveYes.pdf", width = 37, height = 30, units = c('cm'))


res = results(diagdds)
res = res[order(res$padj, na.last=NA), ]
alpha = 0.7
sigtab = res[(res$padj < alpha), ]
sigtab = cbind(as(sigtab, "data.frame"), as(tax_table(survival_yes_phyloseq)[rownames(sigtab), ], "matrix"))
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
  ) + labs(title = "Pre-transplant compared to post-transplant (not sig)", x = "Difference in abundance (log2FoldChange)", y = "Genus") +
  scale_color_manual(labels = c("Actinobacteria", "Bacteroidetes", "Firmicutes","Proteobacteria"), values = c("#B76367",  "#B388B3", "#6EBBD9",   "#61E3B9")) 
ggsave("DESeq2onPrePostPsofigSurviveYes.pdf", width = 37, height = 30, units = c('cm'))

survYES = prepost + prepostno + plot_layout(guides = 'collect', ncol = 1)

ggsave("prepostDeseqSurviveYes.pdf", width = 47, height = 47, units = c('cm'))



survival_no_phyloseq <- prune_samples(sample_sums(survival_no_phyloseq) > 400, survival_no_phyloseq)
survival_no_phyloseq

diagdds = phyloseq_to_deseq2(survival_no_phyloseq, ~ Pre_or_post)
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
sigtab = cbind(as(sigtab, "data.frame"), as(tax_table(survival_no_phyloseq)[rownames(sigtab), ], "matrix"))
head(sigtab)
res
sigtab

2^26.82

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
  ) + labs(title = "Pre-transplant compared to post-transplant (died)", x = "Difference in abundance (log2FoldChange)", y = "Genus") +
  scale_color_manual(labels = c("Firmicutes"), values = c("#6EBBD9")) 
ggsave("DESeq2onPrePostsigSurviveNO.pdf", width = 37, height = 30, units = c('cm'))


res = results(diagdds)
res = res[order(res$padj, na.last=NA), ]
alpha = 0.9
sigtab = res[(res$padj < alpha), ]
sigtab = cbind(as(sigtab, "data.frame"), as(tax_table(survival_no_phyloseq)[rownames(sigtab), ], "matrix"))
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
  ) + labs(title = "Pre-transplant compared to post-transplant (not sig)", x = "Difference in abundance (log2FoldChange)", y = "Genus") +
  scale_color_manual(labels = c("Actinobacteria","Bacteroidetes", "Firmicutes","Proteobacteria"), values = c("#B76367", "#B388B3", "#6EBBD9",  "#61E3B9")) 
ggsave("DESeq2onPrePostPsofigSurviveNO.pdf", width = 37, height = 30, units = c('cm'))

survNO = prepost + prepostno + plot_layout(guides = 'collect', ncol = 1)

ggsave("prepostDeseqSurviveNO.pdf", width = 47, height = 47, units = c('cm'))

survYES | survNO + plot_layout(guides = 'collect', ncol = 1)
ggsave("prepostDeseqSurviveCOMPATER.pdf", width = 87, height = 47, units = c('cm'))

################################

gvhd_low_phyloseq = subset_samples(final_genus_CVG, GvHD.severity == "Low")

gvhd_mod_phyloseq = subset_samples(final_genus_CVG, GvHD.severity == "Mod")

gvhd_low_phyloseq <- prune_samples(sample_sums(gvhd_low_phyloseq) > 400, gvhd_low_phyloseq)
gvhd_low_phyloseq

diagdds = phyloseq_to_deseq2(gvhd_low_phyloseq, ~ Pre_or_post)
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
sigtab = cbind(as(sigtab, "data.frame"), as(tax_table(gvhd_low_phyloseq)[rownames(sigtab), ], "matrix"))
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
  ) + labs(title = "Pre-transplant compared to post-transplant  (No GvHD/GvHD grade I)", x = "Difference in abundance (log2FoldChange)", y = "Genus") +
  scale_color_manual(labels = c("Firmicutes"), values = c("#6EBBD9")) 
ggsave("DESeq2onPrePostsigGvHDLOW.pdf", width = 37, height = 30, units = c('cm'))


res = results(diagdds)
res = res[order(res$padj, na.last=NA), ]
alpha = 0.9
sigtab = res[(res$padj < alpha), ]
sigtab = cbind(as(sigtab, "data.frame"), as(tax_table(gvhd_low_phyloseq)[rownames(sigtab), ], "matrix"))
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
  ) + labs(title = "Pre-transplant compared to post-transplant (not sig)", x = "Difference in abundance (log2FoldChange)", y = "Genus") +
  scale_color_manual(labels = c("Actinobacteria", "Bacteroidetes", "Firmicutes","Proteobacteria"), values = c("#B76367",  "#B388B3", "#6EBBD9",   "#61E3B9")) 
ggsave("DESeq2onPrePostPsofigGvHDLOW.pdf", width = 37, height = 30, units = c('cm'))

GvHDLOW = prepost + prepostno + plot_layout(guides = 'collect', ncol = 1)

ggsave("prepostDeseqSGvHDLOW.pdf", width = 47, height = 47, units = c('cm'))



gvhd_mod_phyloseq <- prune_samples(sample_sums(gvhd_mod_phyloseq) > 400, gvhd_mod_phyloseq)
gvhd_mod_phyloseq

diagdds = phyloseq_to_deseq2(gvhd_mod_phyloseq, ~ Pre_or_post)
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
sigtab = cbind(as(sigtab, "data.frame"), as(tax_table(gvhd_mod_phyloseq)[rownames(sigtab), ], "matrix"))
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
  ) + labs(title = "Pre-transplant compared to post-transplant (GvHD grade II/III)", x = "Difference in abundance (log2FoldChange)", y = "Genus") +
  scale_color_manual(labels = c("Firmicutes"), values = c("#6EBBD9")) 
ggsave("DESeq2onPrePostsigGvHDMOD.pdf", width = 37, height = 30, units = c('cm'))


res = results(diagdds)
res = res[order(res$padj, na.last=NA), ]
alpha = 0.9
sigtab = res[(res$padj < alpha), ]
sigtab = cbind(as(sigtab, "data.frame"), as(tax_table(gvhd_mod_phyloseq)[rownames(sigtab), ], "matrix"))
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
  ) + labs(title = "Pre-transplant compared to post-transplant (not sig)", x = "Difference in abundance (log2FoldChange)", y = "Genus") +
  scale_color_manual(labels = c("Actinobacteria","Bacteroidetes", "Firmicutes","Proteobacteria"), values = c("#B76367", "#B388B3", "#6EBBD9",  "#61E3B9")) 
ggsave("DESeq2onPrePostPsofigSGvHDMOD.pdf", width = 37, height = 30, units = c('cm'))

GvHDMOD = prepost + prepostno + plot_layout(guides = 'collect', ncol = 1)

ggsave("prepostDeseqGvHDMOD.pdf", width = 47, height = 47, units = c('cm'))

GvHDLOW | GvHDMOD + plot_layout(guides = 'collect', ncol = 1)
ggsave("prepostDeseqGvHDCOMPATER.pdf", width = 87, height = 47, units = c('cm'))