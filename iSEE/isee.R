library("Seurat")
library("iSEE")

# Arguments from Shell script
file_name <- commandArgs(trailingOnly=TRUE)[1]
object_name <- commandArgs(trailingOnly=TRUE)[2]

# File Loading
load(file_name)

# Seurat => SingleCellExperiment
object <- eval(parse(text=object_name))
sce <- as.SingleCellExperiment(object)

# iSEE
app <- iSEE(sce)
shiny::runApp(app, host="0.0.0.0", port=8787, launch.browser=TRUE)
