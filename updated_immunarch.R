prepostPalette <- c("#5E2D30", "#1C77A3")

immalpha= repClonality(the20immun$data, "homeo",.clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1))
immalpha
p1 = vis(.data = immalpha, .by = "Pre_or_post", .meta = metadata_cvg)+scale_fill_manual(values=prepostPalette)
p1
fixVis(p1)
#ggsave("clonalityByPrePost.pdf", width = 30, height = 20, units = c('cm')) #clonality by pti patients on and off treatment

prepostneutroPalette <- c("#833437", "#67B9E9")
immalpha= repClonality(the20immun$data, "homeo",.clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1))
immalpha
p1 = vis(.data = immalpha, .by = "Pre_or_post_neutrophil", .meta = metadata_cvg)+scale_fill_manual(values=prepostneutroPalette)
p1
fixVis(p1)

binPalette <- c("#5A6F80", "#278B9A", "#E75B64", "#DE7862", "#D8AF39")
immalpha= repClonality(the20immun$data, "homeo",.clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1))
immalpha
p1 = vis(.data = immalpha, .by = "Sample_bin", .meta = metadata_cvg)+scale_fill_manual(values=binPalette)
p1
fixVis(p1)

+   # ghibli stuff
  scale_fill_ghibli_d("YesterdayMedium", direction = -1)


Relative abundance by genus size (before and after transplant)
Samples collected before and after transplant
Relative abundance of samples (%)
Genus size category

Relative abundance by genus size (CVG001)
Relative abundance of sample (%)
Genus size category
Sample


p1= repClonality(CVG001immun$data, "homeo",
             .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)

p1= repClonality(CVG002immun$data, "homeo",
                 .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)

p1= repClonality(CVG003immun$data, "homeo",
                 .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)

p1= repClonality(CVG004immun$data, "homeo",
                 .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)

p1= repClonality(CVG005immun$data, "homeo",
                 .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)

p1= repClonality(CVG012immun$data, "homeo",
                 .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)

p1= repClonality(CVG014immun$data, "homeo",
                 .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)

p1= repClonality(CVG016immun$data, "homeo",
                 .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)

p1= repClonality(CVG017immun$data, "homeo",
                 .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)

p1= repClonality(CVG019immun$data, "homeo",
                 .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)

p1= repClonality(CVG021immun$data, "homeo",
                 .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)

p1= repClonality(CVG028immun$data, "homeo",
                 .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)

p1= repClonality(CVG032immun$data, "homeo",
                 .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)

p1= repClonality(CVG041immun$data, "homeo",
                 .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)

p1= repClonality(CVG042immun$data, "homeo",
                 .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)

p1= repClonality(CVG046immun$data, "homeo",
                 .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)

p1= repClonality(CVG047immun$data, "homeo",
                 .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)

p1= repClonality(CVG048immun$data, "homeo",
                 .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)

p1= repClonality(CVG052immun$data, "homeo",
                 .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)

p1= repClonality(CVG054immun$data, "homeo",
                 .clone.types = c(Rare = .01, Small = 0.1, Medium = 0.25, Large = 0.5, Hyperexpanded = 1)) 
p1 = vis(p1) 
p1
fixVis(p1)