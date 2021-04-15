# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:RELEASE_3_12

RUN  R -e 'BiocManager::install(version = "3.12", ask=FALSE); BiocManager::valid(); BiocManager::install(c("AnnotationHub", "AnnotationHubData"))'