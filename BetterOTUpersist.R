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
library("ggforce")


combpatients<- rbind(stackedSharedFamily1, stackedSharedFamily2, stackedSharedFamily4, stackedSharedFamily12, stackedSharedFamily14, stackedSharedFamily17, stackedSharedFamily19,stackedSharedFamily28,stackedSharedFamily32,stackedSharedFamily41,stackedSharedFamily42,stackedSharedFamily46, stackedSharedFamily47)



combpatients$Days_post <- as.integer(as.character(combpatients$Days_post))

#a alpha top10
p = ggplot(combpatients, aes(x=combpatients$Days_post, y=combpatients$Count, color=combpatients$ID, fill=combpatients$ID, group=ID)) +
  geom_point(size = 4)+ theme(legend.position="none")+
  geom_line(aes(color = ID, group=ID), size = 1) + labs(title = "", x = "Days post transplant", y = "Percentage of sample (%)", color = "Patient") +
  theme_bw() + theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=18, face="bold"),
    axis.title.y = element_text(color="black", size=18, face="bold"),
    axis.text=element_text(size=10),
    legend.title = element_text(color = "black", size = 16),
    legend.text = element_text(color = "black", size = 14)
  ) + guides(fill=FALSE)+ facet_wrap_paginate(~ Family, ncol = 4, nrow = 4, page = 5)
p
ggsave("familiesinpatients5.pdf", width = 50, height = 30, units = c('cm'))

ggplot(diamonds) +
  geom_point(aes(carat, price), alpha = 0.1) +
  facet_wrap_paginate(~ cut:clarity, ncol = 3, nrow = 3, page = 4)


#i'm going to select the top 12 most abunadant taxa

topN = 12
testglomall = tax_glom(CVG_latest_phyloseq, taxrank = "Family")

most_abundant_taxa = sort(taxa_sums(testglomall), TRUE)[1:topN]
print(most_abundant_taxa)

blah <- aggregate(combpatients$Count, by=list(Category=combpatients$Family), FUN=sum)

Enterobacteriaceae = subset(combpatients, subset=(combpatients$Family == "Enterobacteriaceae")) #creates a dataframe with just the data of interest - eg Patient K, alpha chain, CD8 cells
Enterococcaceae = subset(combpatients, subset=(combpatients$Family == "Enterococcaceae")) #creates a dataframe with just the data of interest - eg Patient K, alpha chain, CD8 cells
Staphylococcaceae = subset(combpatients, subset=(combpatients$Family == "Staphylococcaceae")) #creates a dataframe with just the data of interest - eg Patient K, alpha chain, CD8 cells
Lachnospiraceae = subset(combpatients, subset=(combpatients$Family == "Lachnospiraceae")) #creates a dataframe with just the data of interest - eg Patient K, alpha chain, CD8 cells
Aerococcaceae = subset(combpatients, subset=(combpatients$Family == "Aerococcaceae")) #creates a dataframe with just the data of interest - eg Patient K, alpha chain, CD8 cells
Streptococcaceae = subset(combpatients, subset=(combpatients$Family == "Streptococcaceae")) #creates a dataframe with just the data of interest - eg Patient K, alpha chain, CD8 cells
Veillonellaceae = subset(combpatients, subset=(combpatients$Family == "Veillonellaceae")) #creates a dataframe with just the data of interest - eg Patient K, alpha chain, CD8 cells
Dysgonamonadaceae = subset(combpatients, subset=(combpatients$Family == "Dysgonamonadaceae")) #creates a dataframe with just the data of interest - eg Patient K, alpha chain, CD8 cells
Actinomycetaceae = subset(combpatients, subset=(combpatients$Family == "Actinomycetaceae")) #creates a dataframe with just the data of interest - eg Patient K, alpha chain, CD8 cells
Carnobacteriaceae = subset(combpatients, subset=(combpatients$Family == "Carnobacteriaceae")) #creates a dataframe with just the data of interest - eg Patient K, alpha chain, CD8 cells
Bacteroidaceae = subset(combpatients, subset=(combpatients$Family == "Bacteroidaceae")) #creates a dataframe with just the data of interest - eg Patient K, alpha chain, CD8 cells
Pasteurellaceae = subset(combpatients, subset=(combpatients$Family == "Pasteurellaceae")) #creates a dataframe with just the data of interest - eg Patient K, alpha chain, CD8 cells
Clostridiaceae = subset(combpatients, subset=(combpatients$Family == "Clostridiaceae")) #creates a dataframe with just the data of interest - eg Patient K, alpha chain, CD8 cells
Tannerellaceae = subset(combpatients, subset=(combpatients$Family == "Tannerellaceae")) #creates a dataframe with just the data of interest - eg Patient K, alpha chain, CD8 cells
Moraxellaceae = subset(combpatients, subset=(combpatients$Family == "Moraxellaceae")) #creates a dataframe with just the data of interest - eg Patient K, alpha chain, CD8 cells


sum(Micrococcaceae$Count)
sum(Morganellaceae$Count)
sum(Bacteroidaceae$Count)
sum(Dysgonamonadaceae$Count)
sum(Tannerellaceae$Count)
sum(Akkermansiaceae$Count)
sum(Clostridiaceae$Count)
sum(Pasteurellaceae$Count)
sum(Enterobacteriaceae$Count)
sum(Enterobacteriaceae$Count)
sum(Enterobacteriaceae$Count)
sum(Enterobacteriaceae$Count)
families <-unique(combpatients$Family)
sort(families)

top12fam <- rbind(Enterobacteriaceae,Enterococcaceae,Staphylococcaceae,Lachnospiraceae,Streptococcaceae,Bacteroidaceae,Pasteurellaceae,Veillonellaceae,Moraxellaceae,Tannerellaceae,Dysgonamonadaceae,Clostridiaceae)

top12fam$Days_post <- as.integer(as.character(top12fam$Days_post))

#a alpha top10
p = ggplot(top12fam, aes(x=top12fam$Days_post, y=top12fam$Count, color=top12fam$ID, fill=top12fam$ID, group=ID)) +
  geom_point(size = 4)+ theme(legend.position="none")+
  geom_line(aes(color = ID, group=ID), size = 1) + labs(title = "", x = "Days post transplant", y = "Percentage of sample (%)", color = "Patient") +
  theme_bw() + theme(
    plot.title = element_text(color="black", size=28, face="bold"),
    axis.title.x = element_text(color="black", size=18, face="bold"),
    axis.title.y = element_text(color="black", size=18, face="bold"),
    axis.text=element_text(size=10),
    legend.title = element_text(color = "black", size = 16),
    legend.text = element_text(color = "black", size = 14)
  ) + guides(fill=FALSE)+ facet_wrap(~ Family, nrow = 4)
p
ggsave("top12famiilies.pdf", width = 50, height = 30, units = c('cm'))

