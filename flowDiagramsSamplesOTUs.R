install.packages("DiagrammeR")
install.packages("DiagrammeRsvg")

library(DiagrammeR)
library(DiagrammeRsvg)

OTUFLOWnew <- DiagrammeR::grViz("digraph {
                  
                  graph[layout=dot, color=black, fontsize = 30]
                  
                  node[style=filled, shape = box, fillcolor=DeepSkyBlue, fontsize = 30]
                  
                  edge[arrowhead=vee, color=black,  fontsize = 25, penwidth = 2.5]
                  
                  #naming the nodes
                  
                  subgraph cluster0 {
                  
                  seqMiSeq[label='599 OTUs produced by clustering sequences', align='center']
                  indiSeq[label='Examination of the 31 low \nconfidence taxonomies', shape=diamond, fillcolor=Gold]
                  VJrecom[label='593 OTUs (unidentifable sequences removed) from 195 genera']
                  qualCheck[label='Removal of confirmed contaminant sequences \nusing customised Decontam and \nmock community pipeline. \n50 genera flagged as \npossible contaminants', shape=diamond, fillcolor=Gold]
                  
                  cdr3Translated[label='Final OTU table with 561 OTUs from 173 genera']
                  
                  #order
                  seqMiSeq -> indiSeq [label='']
                  indiSeq -> VJrecom [label='Taxonomy confirmed for \n25 OTUs to at least \nclass level']
                  VJrecom -> qualCheck [label='']
                  qualCheck -> cdr3Translated [label='28 genera retained as \nunlikely to be contaminants']

                  }
                  
                  node[style=filled, shape = box, fillcolor=Coral]
                 

                  idenDiscard[label='Discarded: the six OTUs \nwhich could not be \nidentified' ]
                  collapse1Discard[label='Discarded: 32 OTUs from 22 \ngenera which were \nidentified as contaminants\n in this study' ]
                  outputs[label='OTU table ready for analysis' , fillcolor=LimeGreen]
                  
                  
                  # order this
                  
                  indiSeq -> idenDiscard
                  qualCheck -> collapse1Discard
                  cdr3Translated -> outputs
                  
              
}")
export_svg(OTUFLOWnew) %>%
  charToRaw() %>%
  rsvg_png("OTUFLOWnew.png")


sampleFLOWW <- DiagrammeR::grViz("digraph {
                  
                  graph[layout=dot, color=black, fontsize = 30]
                  
                  node[style=filled, shape = box, fillcolor=DeepSkyBlue, fontsize = 30]
                  
                  edge[arrowhead=vee, color=black,  fontsize = 25, penwidth = 2.5]
                  
                  #naming the nodes
                  
                  subgraph cluster0 {
                  
                  seqMiSeq[label='59 patients enrolled in study', align='center']
                  indiSeq[label='Sample collection', shape=diamond, fillcolor=Gold]
                  VJrecom[label='315 stool samples from 56 patients']
                  VJrecom2[label='136 stool samples \nfrom 47 patients']
                  mocks[label='3 replicates of the \nmock community', fillcolor=LightBlue]
                  negs[label='7 negative controls', fillcolor=LightBlue]
                  qualCheck[label='DNA amplification using PCR', shape=diamond, fillcolor=Gold]
                  qualCheck2[label='Sequencing using V5-V7 16S region', shape=diamond, fillcolor=Gold]
                  
                  cdr3Translated[label='Complete sequenced dataset made up of \n136 patient samples, \n3 mock community replicates, \nand 7 negative controls']
                  
                  {rank = same; VJrecom2; mocks; negs}
                  
                  #order
                  seqMiSeq -> indiSeq [label='']
                  indiSeq -> VJrecom [label='']
                  VJrecom -> qualCheck [label='']
                  qualCheck ->VJrecom2[label='']
                  VJrecom2-> qualCheck2 [label='']
                  mocks-> qualCheck2 [label='']
                  negs-> qualCheck2 [label='']
                  qualCheck2 -> cdr3Translated [label='']

                  }
                  
                  node[style=filled, shape = box, fillcolor=Coral]
                 

                  idenDiscard[label='Three patients removed \nat this stage as no \nsample were collected' ]
                  collapse1Discard[label='179 samples could not \nbe adequately amplified\n for sequencing' ]
                  outputs[label='102 samples from 20 patients used \nfor individual patient analysis' , fillcolor=LimeGreen]
                  
                  
                  # order this
                  
                  indiSeq -> idenDiscard
                  qualCheck -> collapse1Discard
                  cdr3Translated -> outputs
                  
              
}")
export_svg(sampleFLOWW) %>%
  charToRaw() %>%
  rsvg_png("sampleFLOWW.png")

unique(CVG028dfm$Genus)
unique(tax_data_table$Genus)

rank_names(CVG021$Genus)
test <- tax_table(CVG021)
test$Genus


# Create a factor corresponding to the Genera
genfac = factor(tax_table(CVG021)[, "Genus"])
# Tabulate the counts for each genera in each sample
gentab = apply(otu_table(CVG021), MARGIN = 2, function(x) {
  tapply(x, INDEX = genfac, FUN = sum, na.rm = TRUE, simplify = TRUE)
})
gentab
unique(gentab)
