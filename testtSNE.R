
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
library("decontam")
library("tsnemicrobiota")
library("Rtsne")



#install the package
install.packages("remotes")
install.packages("Rtsne")
remotes::install_github("opisthokonta/tsnemicrobiota")

library("devtools")
install_github("opisthokonta/tsnemicrobiota")
#data("GlobalPatterns")
tsne_res <- tsne_phyloseq(fasttree_CVG_phyloseq, distance='wunifrac',
                          perplexity = 8, verbose=0, rng_seed = 3901)
plot_tsne_phyloseq(fasttree_CVG_phyloseq, tsne_res,
                   color = 'Patient_ID', title='t-SNE (Weighted UniFrac)')

#more interesting if i plot by patient??

#this is just the 17 patients
fasttree_CVG_phyloseq_decontaminated <- merge_phyloseq(CVG_phyloseq_decontaminated_juspatients, tree.fasttree)

  <- tsne_phyloseq(fasttree_CVG_phyloseq_decontaminated, distance='wunifrac',
                          perplexity = 8, verbose=0, rng_seed = 3800)
plot_tsne_phyloseq(fasttree_CVG_phyloseq_decontaminated, tsne_res,
                   color = 'Patient_ID', title='t-SNE (Weighted UniFrac) on the 17 patients')
#not currently working

#patient 01
CVG001_wTree <- merge_phyloseq(CVG001, tree.fasttree)
tsne_res <- tsne_phyloseq(CVG001_wTree, distance='wunifrac',
                          perplexity = 3, verbose=0, rng_seed = 5800)
plot_tsne_phyloseq(CVG001_wTree, tsne_res,
                   color = 'Number_of_days_post_transplant', title='t-SNE (Weighted UniFrac) on CVG001')+ geom_point(size = 8) +theme_bw() + labs(x = " ", y = " ", color = "Days post transplant") 
ggsave("tsneCVG001.pdf", width = 27, height = 20, units = c('cm'))


#patient 02
CVG002_wTree <- merge_phyloseq(CVG002, tree.fasttree)
set.seed(50)
tsne_res <- tsne_phyloseq(CVG002_wTree, distance='wunifrac',
                          perplexity = 7, verbose=0, rng_seed = 5800)
plot_tsne_phyloseq(CVG002_wTree, tsne_res,
                   color = 'Number_of_days_post_transplant', title='t-SNE (Weighted UniFrac) on CVG002')+ geom_point(size = 8) +theme_bw() + labs(x = " ", y = " ", color = "Days post transplant") 
ggsave("tsneCVG002.pdf", width = 27, height = 20, units = c('cm'))

#patient 03
CVG003_wTree <- merge_phyloseq(CVG003, tree.fasttree)
set.seed(154)
tsne_res <- tsne_phyloseq(CVG003_wTree, distance='wunifrac',
                          perplexity = 2, verbose=0, rng_seed = 5800)
plot_tsne_phyloseq(CVG003_wTree, tsne_res,
                   color = 'Number_of_days_post_transplant', title='t-SNE (Weighted UniFrac) on CVG003')+ geom_point(size = 8) +theme_bw() + labs(x = " ", y = " ", color = "Days post transplant") 
ggsave("tsneCVG003.pdf", width = 27, height = 20, units = c('cm'))
CVG003_wTree

#patient 04
CVG004_wTree <- merge_phyloseq(CVG004, tree.fasttree)
set.seed(50)
tsne_res <- tsne_phyloseq(CVG004_wTree, distance='wunifrac',
                          perplexity = 2, verbose=0, rng_seed = 5800)
plot_tsne_phyloseq(CVG004_wTree, tsne_res,
                   color = 'Number_of_days_post_transplant', title='t-SNE (Weighted UniFrac) on CVG004')+ geom_point(size = 8) +theme_bw() + labs(x = " ", y = " ", color = "Days post transplant") 
ggsave("tsneCVG004.pdf", width = 27, height = 20, units = c('cm'))

#patient 12
CVG012_wTree <- merge_phyloseq(CVG012, tree.fasttree)
sample_data(CVG012)$Number_of_days_post_transplant = factor(sample_data(CVG012)$Number_of_days_post_transplant, levels = c("-7","1","7","25","36", "62", "89","117","236","271"))
set.seed(40)
tsne_res <- tsne_phyloseq(CVG012_wTree, distance='wunifrac',
                          perplexity = 7, verbose=0, rng_seed = 5800)
plot_tsne_phyloseq(CVG012_wTree, tsne_res,
                   color = 'Number_of_days_post_transplant', title='t-SNE (Weighted UniFrac) on CVG012')+ geom_point(size = 8) +theme_bw() + labs(x = " ", y = " ", color = "Days post transplant") 
ggsave("tsneCVG012.pdf", width = 27, height = 20, units = c('cm'))

#patient 14
CVG014_wTree <- merge_phyloseq(CVG014, tree.fasttree)
set.seed(50)
tsne_res <- tsne_phyloseq(CVG014_wTree, distance='wunifrac',
                          perplexity = 3, verbose=0, rng_seed = 5800)
plot_tsne_phyloseq(CVG014_wTree, tsne_res,
                   color = 'Number_of_days_post_transplant', title='t-SNE (Weighted UniFrac) on CVG014')+ geom_point(size = 8) +theme_bw() + labs(x = " ", y = " ", color = "Days post transplant") 
ggsave("tsneCVG014.pdf", width = 27, height = 20, units = c('cm'))

#patient 17
CVG017_wTree <- merge_phyloseq(CVG017, tree.fasttree)
set.seed(40)
tsne_res <- tsne_phyloseq(CVG017_wTree, distance='wunifrac',
                          perplexity = 3, verbose=0, rng_seed = 5800)
plot_tsne_phyloseq(CVG017_wTree, tsne_res,
                   color = 'Number_of_days_post_transplant', title='t-SNE (Weighted UniFrac) on CVG017')+ geom_point(size = 8) +theme_bw() + labs(x = " ", y = " ", color = "Days post transplant") 
ggsave("tsneCVG017.pdf", width = 27, height = 20, units = c('cm'))

#patient 19
CVG019_wTree <- merge_phyloseq(CVG019, tree.fasttree)
set.seed(523)
tsne_res <- tsne_phyloseq(CVG019_wTree, distance='wunifrac',
                          perplexity = 2, verbose=0, rng_seed = 5800)
plot_tsne_phyloseq(CVG019_wTree, tsne_res,
                   color = 'Number_of_days_post_transplant', title='t-SNE (Weighted UniFrac) on CVG019')+ geom_point(size = 8) +theme_bw() + labs(x = " ", y = " ", color = "Days post transplant") 
ggsave("tsneCVG019.pdf", width = 27, height = 20, units = c('cm'))

#patient 21
CVG021_wTree <- merge_phyloseq(CVG021, tree.fasttree)
set.seed(545)
tsne_res <- tsne_phyloseq(CVG021_wTree, distance='wunifrac',
                          perplexity = 2, verbose=0, rng_seed = 5800)
plot_tsne_phyloseq(CVG021_wTree, tsne_res,
                   color = 'Number_of_days_post_transplant', title='t-SNE (Weighted UniFrac) on CVG021')+ geom_point(size = 8) +theme_bw() + labs(x = " ", y = " ", color = "Days post transplant") 
ggsave("tsneCVG021.pdf", width = 27, height = 20, units = c('cm'))

#patient 28
CVG028_wTree <- merge_phyloseq(CVG028, tree.fasttree)
set.seed(4320)
tsne_res <- tsne_phyloseq(CVG028_wTree, distance='wunifrac',
                          perplexity = 3, verbose=0, rng_seed = 5800)
plot_tsne_phyloseq(CVG028_wTree, tsne_res,
                   color = 'Number_of_days_post_transplant', title='t-SNE (Weighted UniFrac) on CVG028')+ geom_point(size = 8) +theme_bw() + labs(x = " ", y = " ", color = "Days post transplant") 
ggsave("tsneCVG028.pdf", width = 27, height = 20, units = c('cm'))

#patient 32
CVG032_wTree <- merge_phyloseq(CVG032, tree.fasttree)
set.seed(630)
tsne_res <- tsne_phyloseq(CVG032_wTree, distance='wunifrac',
                          perplexity = 6, verbose=0, rng_seed = 5800)
plot_tsne_phyloseq(CVG032_wTree, tsne_res,
                   color = 'Number_of_days_post_transplant', title='t-SNE (Weighted UniFrac) on CVG032')+ geom_point(size = 8) +theme_bw() + labs(x = " ", y = " ", color = "Days post transplant") 
ggsave("tsneCVG032.pdf", width = 27, height = 20, units = c('cm'))

#patient 41
CVG041_wTree <- merge_phyloseq(CVG041, tree.fasttree)
set.seed(325)
tsne_res <- tsne_phyloseq(CVG041_wTree, distance='wunifrac',
                          perplexity = 5, verbose=0, rng_seed = 5800)
plot_tsne_phyloseq(CVG041_wTree, tsne_res,
                   color = 'Number_of_days_post_transplant', title='t-SNE (Weighted UniFrac) on CVG041')+ geom_point(size = 8) +theme_bw() + labs(x = " ", y = " ", color = "Days post transplant") 
ggsave("tsneCVG041.pdf", width = 27, height = 20, units = c('cm'))

#patient 42
CVG042_wTree <- merge_phyloseq(CVG042, tree.fasttree)
set.seed(325)
tsne_res <- tsne_phyloseq(CVG042_wTree, distance='wunifrac',
                          perplexity = 2, verbose=0, rng_seed = 5900)
plot_tsne_phyloseq(CVG042_wTree, tsne_res,
                   color = 'Number_of_days_post_transplant', title='t-SNE (Weighted UniFrac) on CVG042')+ geom_point(size = 8) +theme_bw() + labs(x = " ", y = " ", color = "Days post transplant") 
ggsave("tsneCVG042.pdf", width = 27, height = 20, units = c('cm'))

#patient 46
CVG046_wTree <- merge_phyloseq(CVG046, tree.fasttree)
set.seed(50)
tsne_res <- tsne_phyloseq(CVG046_wTree, distance='wunifrac',
                          perplexity = 2, verbose=0, rng_seed = 5800)
plot_tsne_phyloseq(CVG046_wTree, tsne_res,
                   color = 'Number_of_days_post_transplant', title='t-SNE (Weighted UniFrac) on CVG046')+ geom_point(size = 8) +theme_bw() + labs(x = " ", y = " ", color = "Days post transplant") 
ggsave("tsneCVG046.pdf", width = 27, height = 20, units = c('cm'))

#patient 47
CVG047_wTree <- merge_phyloseq(CVG047, tree.fasttree)
set.seed(538)
tsne_res <- tsne_phyloseq(CVG047_wTree, distance='wunifrac',
                          perplexity = 7, verbose=0, rng_seed = 5800)
plot_tsne_phyloseq(CVG047_wTree, tsne_res,
                   color = 'Number_of_days_post_transplant', title='t-SNE (Weighted UniFrac) on CVG047')+ geom_point(size = 8) +theme_bw() + labs(x = " ", y = " ", color = "Days post transplant") 
ggsave("tsneCVG047.pdf", width = 27, height = 20, units = c('cm'))

citation(package = "ggplot2")
