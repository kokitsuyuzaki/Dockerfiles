# Docker inheritance
FROM bioconductor/bioconductor_docker:RELEASE_3_19

# Install required Bioconductor package
RUN R -e "BiocManager::install(version='3.19', ask=FALSE); BiocManager::valid(); BiocManager::install(c('tximport', 'rhdf5'), ask=FALSE, force=TRUE)"
