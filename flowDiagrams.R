install.packages("DiagrammeR")
install.packages("DiagrammeRsvg")

library(DiagrammeR)
library(DiagrammeRsvg)

DecombinatorExample <- DiagrammeR::grViz("digraph {
                  
                  graph[layout=dot, color=RoyalBlue]
                  
                  node[style='rounded,filled', shape = box, fillcolor=Lavender]
                  
                  edge[arrowhead=vee, color=black]
                  
                  #naming the nodes
                  
                  subgraph cluster0 {
                  
                  seqMiSeq[label='Sequencing files\n from the MiSeq', align='center']
                  indiSeq[label='Individual sequencing\n files for each sample']
                  VJrecom[label='VJ recombination identified']
                  qualCheck[label='Quality controlled sequencing files \n for each sample']
                  gnTranslated[label='V region, J region, deletions,\n and insertion of each clonotype identified, \n as well as clonotype frequency']
                  cdr3Translated[label='Translated CDR3 region\n  and frequency count for each sample']
                  
                  #order
                  seqMiSeq -> indiSeq [label='Demultiplexor', color=red4]
                  indiSeq -> VJrecom [label='Decombinator']
                  VJrecom -> qualCheck [label='Collapsinator']
                  qualCheck -> gnTranslated [label='GN Translator']
                  qualCheck -> cdr3Translated [label='CDR3 Translator']
                  qualCheck -> {gnTranslated cdr3Translated}
                  
                  }
                  
                  node[style='rounded,filled', shape = box, fillcolor=Honeydew]
                 
                  barcode[label='Barcodes used to mark sequences by sample name']
                  idenDiscard[label='Discarded: any sequences which \n cannot be clearly classified back into \n the sample they came from' ]
                  vjDiscard[label='Discarded: any sequences which \n cannot be identifed by V and J regions' ]
                  collapse1Discard[label='Discarded: any sequences which \n are duplicates arising from \n the sequencing process' ]
                  collapse2Discard[label='Discarded: any sequences \n with errors' ]
                  outputs[label='Files ready for import into R for analysis' ]
                  
                  
                  # order this
                  
                  barcode -> indiSeq -> idenDiscard
                  VJrecom -> vjDiscard
                  qualCheck -> {collapse1Discard collapse2Discard}
                  {gnTranslated cdr3Translated} -> outputs
                  
              
}")
export_svg(DecombinatorExample) %>%
  charToRaw() %>%
  rsvg_png("decombinatorFlow.png")


DiagrammeR::grViz("digraph {
                  
                  graph[layout=dot, color=RoyalBlue]
                  
                  node[style=filled, shape = box, fillcolor=Lavender]
                  
                  edge[arrowhead=vee, color=black]
                  
                  #naming the nodes
                  
                  subgraph cluster0 {
                  
                  seqMiSeq[label='Sequencing files\n from the MiSeq']
                  indiSeq[label='Individual sequencing\n files for each sample']
                  VJrecom[label='VJ recombination identified']
                  qualCheck[label='Quality controlled sequencing files \n for each sample']
                  gnTranslated[label='V region, J region, deletions,\n and insertion of each clonotype identified, \n as well as clonotype frequency']
                  cdr3Translated[label='Translated CDR3 region\n  and frequency count for each sample']
                  Demultiplexor[label='Demultiplexor', fillcolor='AliceBlue']
                  Decombinator[label='Decombinator', fillcolor='AliceBlue']
                  Collapsinator[label='Collapsinator', fillcolor='AliceBlue']
                  GNTranslator[label='GN Translator', fillcolor='AliceBlue']
                  CDR3Translator[label='CDR3 Translator', fillcolor='AliceBlue']
                  
                  #order
                  seqMiSeq -> Demultiplexor -> indiSeq -> Decombinator -> VJrecom -> Collapsinator -> qualCheck -> {GNTranslator CDR3Translator}
                  GNTranslator -> gnTranslated
                  CDR3Translator -> cdr3Translated
                  }
                  
                  node[style=filled, shape = box, fillcolor=Honeydew]
                 
                  barcode[label='Barcodes used to mark sequences by sample name']
                  idenDiscard[label='Discarded: any sequences which \n cannot be clearly classified back into \n the sample they came from' ]
                  vjDiscard[label='Discarded: any sequences which \n cannot be identifed by V and J regions' ]
                  collapse1Discard[label='Discarded: any sequences which \n are duplicates arising from \n the sequencing process' ]
                  collapse2Discard[label='Discarded: any sequences \n with errors' ]
                  outputs[label='Files ready for import into R for analysis' ]
                  vjs[label='Library of V and J sequences \n for identification']
                  
                  
                  # order this
                  
                  barcode -> Demultiplexor -> idenDiscard
                  Decombinator -> vjDiscard
                  vjs -> Decombinator
                  Collapsinator -> {collapse1Discard collapse2Discard}
                  {gnTranslated cdr3Translated} -> outputs
                  
              
}")
