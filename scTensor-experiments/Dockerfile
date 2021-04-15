# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:RELEASE_3_12

RUN apt-get update \
	&& apt-get install -y --no-install-recommends apt-utils \
	&& apt-get install -y --no-install-recommends \
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
	&& R -e 'BiocManager::install(version = "3.12", ask=FALSE); BiocManager::valid(); BiocManager::install(c("GSEABase", "schex", "scales", "RColorBrewer", "ROCR", "nnTensor", "rTensor", "Matrix", "Homo.sapiens", "Mus.musculus", "DESeq2", "statmod", "ggplot2", "viridis", "dbscan", "mclust"), ask=FALSE); remotes::install_github(c("rikenbit/LRBase.Hsa.eg.db", "rikenbit/LRBase.Mmu.eg.db", "rikenbit/scTensor"))'