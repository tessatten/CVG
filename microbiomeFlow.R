library(DiagrammeR)
library(DiagrammeRsvg)
library(rsvg)
library(magrittr)


example16SLab <- DiagrammeR::grViz("digraph {
                  
                  graph[layout=dot, color=RoyalBlue]
                  
                  node[style='rounded,filled', shape = box, fillcolor=Lavender]
                  
                  edge[arrowhead=vee, color=black]
                  
                  #naming the nodes
                  
                  subgraph cluster0 {
                  
                  initialSamples[label='Samples collected for sequencing. To study the gut microbiome, \nthese are likely to be stool samples.', align='center']
                  extract[label='Extracted genomic DNA for each sample in the study. \nNegative extraction controls are added here.']
                  amped[label='Amplified 16S rRNA gene DNA from the region of interest (e.g. V5 - V7).']
                  withindex[label='Amplified 16S rRNA gene DNA with adapters and indexes for using \nin sequencing.']
                  pooled[label='Amplicon libraries are pooled and normalised for sequencing.']
                  sequenced[label='Files containing 16S rRNA gene sequences and index information are produced \nand are ready for downstream bioinformatic analysis.']
                  
                  #order
                  initialSamples -> extract [label=' DNA extraction', color=red4]
                  extract -> amped [label=' PCR (with region-specific primers)', color=red4]
                  amped -> withindex [label=' Add indexes', color=red4]
                  withindex -> pooled [label='Libraries pooled', color=red4]
                  pooled -> sequenced [label=' Sequencing', color=red4]
                  
                  }
                  
              
}")
export_svg(example16SLab) %>%
  charToRaw() %>%
  rsvg_png("16SSS.png")




###for bioinformatics

example16SBioInf <- DiagrammeR::grViz("digraph {
                  
                  graph[layout=dot, color=DarkSlateBlue, rankdir = TB, fontsize = 30]
                  
                  node[style='rounded,filled', shape = box, fillcolor=PowderBlue, fontsize = 30]
                  
                  edge[arrowhead=vee, color=DeepPink,  fontsize = 25, penwidth = 2.5]
                  
                  #naming the nodes
                  
                  subgraph cluster0 {
                  
                  fromMiseq[label='FASTQ files from the MiSeq containing the 16S amplicons.', align='center']
                  trimmed[label='FASTQ files with the indexes from sequencing removed.']
                  justR1[label='If doing single-read sequencing, \nno joining required.', color=AliceBlue]
                  R1andR2[label='If doing paired-end read sequencing, the two sets \nof reads for each sample must be joined.', color=AliceBlue]
                  ready[label='Sequence reads are ready for quality preprocessing steps such as filtering \nfor errors and length,']
                  errorcorrected[label='Sequence reads with errors removed, and of the correct sequence length.']
                  clustered[label='Sequences have been clustered based on similarity. \nEach cluster is known as an operational taxonomic unit (OTU).']
                  taxed[label='Each OTU now has a taxonomic identity.']
                  otutable[label='A table showing the abundance of each OTU \nin the samples of the study.']
                  taxtable[label='A table showing the taxonomic classification \nof each OTU, from phylum to species.']
                  
                  
                  #order
                  fromMiseq -> trimmed [label=' Trim reads', color=DeepPink]
                  trimmed -> justR1 [label=' ', color=DeepPink]
                  trimmed -> R1andR2 [label=' ', color=DeepPink]
                  justR1 -> ready [label=' ', color=DeepPink]
                  R1andR2 -> ready [label=' Join paired-end read files', color=DeepPink]
                  ready -> errorcorrected [label=' Preprocessing for sequence quality', color=DeepPink]
                  errorcorrected -> clustered [label=' Cluster sequences into OTUs, ', color=DeepPink]
                  clustered -> taxed [label=' Assign taxonomy, ', color=DeepPink]
                  taxed -> otutable [label=' Abundance table is produced ', color=DeepPink]
                  taxed -> taxtable [label=' Taxonomy table is produced ', color=DeepPink]
                  }
                  
              
}")
export_svg(example16SBioInf) %>%
  charToRaw() %>%
  rsvg_png("16sExampleS.png")

###for bioinformatics - cvg specific

cvgFLow <- DiagrammeR::grViz("digraph {
                  
                  graph[layout=dot, color=Navy, rankdir = TB, fontsize = 30]
                  
                  node[style='rounded,filled', shape = box, fillcolor=Thistle, fontsize = 30]
                  
                  edge[arrowhead=vee, color=SteelBlue,  fontsize = 25, penwidth = 2.5]
                  
                  #naming the nodes
                  
                  subgraph cluster0 {
                  
                  fromMiseq[label='FASTQ files from the MiSeq containing the 16S amplicons.', align='center']
                  trimmed[label='FASTQ files with the indexes from sequencing removed.']
                  ready[label='Sequence reads are ready for quality preprocessing steps such as filtering \nfor errors and length,']
                  errorcorrected[label='Sequence reads with errors removed, and of the correct sequence length.']
                  dereplicated[label='Identical sequences have been gathered together.']
                  clustered[label='Sequences have been clustered based on similarity and chimaeric sequences removed. \nEach cluster is known as an operational taxonomic unit (OTU).']
                  taxed[label='Each OTU now has a taxonomic identity.']
                  otutable[label='A table showing the abundance\n of each OTU in the samples \nof the study.']
                  taxtable[label='A table showing the.taxonomic \nclassification of each OTU, \nfrom phylum to species.']
                  decontamed[label='The OTU table has been examined \nand OTUs likely to be contaminants removed.']
                  metadata[label='A table with all metadata \nand sample information.']
                  phyloseq[label='A phyloseq object combining the OTU table, \nthe taxonomic classifications, and the sample metadata. Ready for onward analysis.']
                  
                  #order
                  fromMiseq -> trimmed [label=' Trim reads', color=SteelBlue]
                  trimmed -> ready [label=' Join paired-end read files (FLASH)', color=SteelBlue]
                  ready -> errorcorrected [label=' Sequences with over 1 expected error, \nlonger than 380 nt, \nor shorter than 360 nt removed (vsearch)', color=SteelBlue]
                  errorcorrected -> dereplicated [label=' Sequences dereplicated, ', color=SteelBlue]
                  dereplicated -> clustered [label=' Cluster sequences into OTUs at 99% \nand remove chimaeric sequences (vsearch) ', color=SteelBlue]
                  clustered -> taxed [label=' Assign taxonomy (MAPSeq) ', color=SteelBlue]
                  
                  {rank = same; otutable; taxtable; metadata}
                  
                  taxed -> otutable [label=' Abundance table is \nproduced ']
                  taxed -> taxtable [label=' Taxonomy table is \nproduced ', color=SteelBlue]
                  otutable -> decontamed [label=' Removal of contaminants ', color=SteelBlue]
                  decontamed -> phyloseq [label=' Imported into R and \ncombined using phyloseq ', color=SteelBlue]
                  taxtable -> phyloseq [label=' Imported into R and \ncombined using phyloseq ', color=SteelBlue]
                  metadata -> phyloseq [label=' Imported into R and \ncombined using phyloseq ', color=SteelBlue]

                  
                  }
                  
              
}")
export_svg(cvgFLow) %>%
  charToRaw() %>%
  rsvg_png("cvgFLow.png")











###for bioinformatics - oricol specific

DiagrammeR::grViz("digraph {
                  
                  graph[layout=dot, color=Navy, fontsize = 30]
                  
                  node[style='rounded,filled', shape = box, fillcolor=DarkSeaGreen, fontsize = 30]
                  
                  edge[arrowhead=vee, color=DarkOrange,  fontsize = 25, penwidth = 2.5]
                  
                  #naming the nodes
                  
                  subgraph cluster0 {
                  
                  fromMiseq[label='FASTQ files from the MiSeq containing the 16S amplicons.', align='center']
                  trimmed[label='FASTQ files with the indexes from sequencing removed.']
                  ready[label='Sequence reads are ready for quality preprocessing.']
                  clustered[label='Sequences have been clustered based on similarity. \nEach cluster is known as an operational taxonomic unit (OTU).']
                  taxed[label='Each OTU now has a taxonomic identity.']
                  otutable[label='A table showing the abundance ot each OTU \nin the samples of the study.']
                  taxtable[label='A table showing the.taxonomic classification \nof each OTU, from phylum to species.']
                  metadata[label='A table with all metadata \nand sample information.']
                  phyloseq[label='A phyloseq object combiing the OTU table, \nthe taxonomic classifications, and the sample metadata. Ready for onward analysis.']
                  
                  #order
                  fromMiseq -> trimmed [label=' Trim reads', color=DarkOrange]
                  trimmed -> ready [label=' Join paired-end read files (FLASH)', color=DarkOrange]
                  ready -> clustered [label=' Cluster sequences into OTUs at 97% \n (QIIME v1.9.1), ', color=DarkOrange]
                  clustered -> taxed [label=' Assign taxonomy (In-house 16S database \ncomplemented by the GreenGenes database) ', color=DarkOrange]
                  taxed -> otutable [label=' Abundance table is produced ', color=DarkOrange]
                  taxed -> taxtable [label=' Taxonomy table is produced ', color=DarkOrange]
                  otutable -> phyloseq [label=' Imported into R and \ncombined using phyloseq ', color=DarkOrange]
                  taxtable -> phyloseq [label=' Imported into R and \ncombined using phyloseq ', color=DarkOrange]
                  metadata -> phyloseq [label=' Imported into R and \ncombined using phyloseq ', color=DarkOrange]

                  
                  }
                  
              
}")
