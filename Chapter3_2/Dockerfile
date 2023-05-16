# Docker inheritance
FROM bioconductor/bioconductor_docker:RELEASE_3_16

# Install required Bioconductor package
RUN R -e 'BiocManager::install(c("tximport", "rhdf5"))'