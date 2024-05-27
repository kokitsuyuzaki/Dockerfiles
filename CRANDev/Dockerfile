FROM bioconductor/bioconductor_docker:RELEASE_3_17

RUN apt-get update && \
    apt-get install -y --no-install-recommends xserver-xorg x11-apps && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
	## Install Packages
	R -e 'BiocManager::install(version = "3.17", ask=FALSE); BiocManager::valid(); BiocManager::install(c("irlba", "mixOmics", "testthat", "covr", "knitr", "rmarkdown", "mwTensor", "ttTensor", "gcTensor", "nnTensor", "iTensor", "ccTensor", "dcTensor", "guidedPLS", "Vicus")); \
	library("irlba"); library("mixOmics"); library("testthat"); library("covr"); library("knitr"); library("rmarkdown"); library("mwTensor"); library("ttTensor"); library("gcTensor"); library("nnTensor"); library("iTensor"); library("ccTensor"); library("dcTensor"); library("guidedPLS"); library("Vicus")'