# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:RELEASE_3_14

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
	&& R -e 'BiocManager::install(version = "3.14", ask=FALSE);   BiocManager::valid();   BiocManager::install(c("scTensor", "LRBaseDbi", "scTGIF", "Homo.sapiens", "Mus.musculus", "DESeq2", "statmod", "dbscan", "mclust"), ask=FALSE, force=TRUE)'