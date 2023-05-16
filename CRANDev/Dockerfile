# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM rocker/r-devel:latest

RUN apt-get update \
	&& apt-get install -y --no-install-recommends pandoc \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* \
	## Install Packages
	&& R -e 'install.packages("BiocManager", repos="http://cran.r-project.org", type="source"); BiocManager::install(c("irlba", "mixOmics", "testthat", "knitr", "rmarkdown", "mwTensor", "ttTensor", "gcTensor", "nnTensor", "iTensor", "ccTensor", "dcTensor", "guidedPLS", "Vicus"))'