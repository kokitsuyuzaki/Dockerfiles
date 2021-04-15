# Docker inheritance
FROM bioconductor/bioconductor_docker:RELEASE_3_12

# Update apt-get
RUN apt-get update \
	## Remove packages in '/var/cache/' and 'var/lib'
	## to remove side-effects of apt-get update
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

# Install required Bioconductor package
RUN R -e 'BiocManager::install(c("tximport", "Homo.sapiens", "rhdf5"))'