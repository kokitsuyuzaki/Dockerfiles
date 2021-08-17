# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:RELEASE_3_13

RUN apt-get update \
	&& apt-get install -y --no-install-recommends apt-utils \
	&& apt-get install -y --no-install-recommends \
	libmysqlclient-dev \
	libgdal-dev \
	texlive \
	texlive-latex-extra \
	texlive-fonts-extra \
	texlive-bibtex-extra \
	texlive-science \
	texi2html \
	texinfo \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* \
	## Install Packages
	&& R -e 'BiocManager::install(version = "3.13", ask=FALSE);   BiocManager::valid();   BiocManager::install(c("MeSHDbi"), ask=FALSE, force=TRUE);   system("wget https://bioconductor.org/packages/release/data/annotation/src/contrib/MeSH.Hsa.eg.db_1.15.1.tar.gz");   system("wget https://bioconductor.org/packages/release/data/annotation/src/contrib/MeSH.Mmu.eg.db_1.15.1.tar.gz");   install.packages("MeSH.Hsa.eg.db_1.15.1.tar.gz", type="source", repos=NULL);   install.packages("MeSH.Mmu.eg.db_1.15.1.tar.gz", type="source", repos=NULL);   system("rm -rf MeSH.*");   BiocManager::install(c("scales", "RColorBrewer", "ROCR", "ggplot2", "viridis", "dbscan", "fields", "mclust", "meshr", "ReactomePA"), ask=FALSE, force=TRUE);   remotes::install_github("rikenbit/nnTensor", force=TRUE, dependencies=TRUE, upgrade="always");   remotes::install_github("rikenbit/ccTensor", force=TRUE, dependencies=TRUE, upgrade="always");   remotes::install_github("rikenbit/scTensor", force=TRUE, dependencies=TRUE, upgrade="always")'