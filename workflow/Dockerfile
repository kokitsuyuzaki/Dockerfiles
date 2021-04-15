# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:RELEASE_3_12

RUN R -e 'BiocManager::install(version = "3.12"); BiocManager::valid(); BiocManager::install(c("data.table", "ggplot2", "RSQLite", "gtable", "gridExtra", "grid", "stringr", "VennDiagram", "biomaRt", "Homo.sapiens", "AnnotationHub", "AnnotationDbi", "ensembldb", "GenomicFeatures"), ask=FALSE)'