# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM rocker/rstudio:devel

RUN apt-get update \
	&& apt-get install -y --no-install-recommends apt-utils \
	libxml2-dev \
	libxtst6 \
	libz-dev \
	qpdf \
	texlive \
	texlive-latex-extra \
	texlive-fonts-extra \
	texlive-bibtex-extra \
	texlive-science \
	texi2html \
	texinfo \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* \
	&& R -e 'install.packages(c("devtools", "base64enc", "htmltools", "markdown", "rmarkdown", "knitr", "testthat", "rhub"), repos="https://cran.r-project.org", type="source")'