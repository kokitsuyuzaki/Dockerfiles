# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:RELEASE_3_20

RUN apt-get update \
	&& apt-get install -y --no-install-recommends apt-utils \
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
	&& R -e 'BiocManager::install(version = "3.20"); BiocManager::valid(); BiocManager::install(c("tximport", "edgeR", "DESeq2", "xlsx", "openxlsx", "ggplot2", "VennDiagram", "tagcloud"), ask=FALSE); '
