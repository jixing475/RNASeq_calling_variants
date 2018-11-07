
#流程图
library(DiagrammeR)
graph <- 
  grViz("
digraph boxes_and_circles {
# graph attributes
graph [overlap = true]
graph [rankdir = LR]

# node attributes
node [shape = box, //box or circle
//style = filled,
fontname = Helvetica,
penwidth = 2.0,
color = black ] // frame color


# edge attributes
edge [color = black]
        
    # edge statements
    bioconductor -> {Bed gtf fasta}
    Bed -> {Bam} [fillcolor = red]
    Bam -> {Fastq} [fillcolor = red]

                            }
") 
graph
#http://rich-iannone.github.io/DiagrammeR/graphviz_and_mermaid.html#attributes
 