FROM ubuntu

MAINTAINER KOKI TSUYUZAKI

RUN sudo apt-get -y update
RUN sudo apt-get -y upgrade
RUN sudo apt-get -y build-dep r-base
RUN sudo apt-get -y install subversion ccache r-base-dev git
RUN mkdir -p ~/svn
RUN cd ~/svn && svn co https://svn.r-project.org/R/trunk r-devel/R
RUN cd ~/svn/r-devel/R && sudo ./configure --without-recommended-packages --enable-R-shlib && sudo make && sudo make install
ENV PATH $PATH:~/svn/r-devl/R/bin
RUN sudo apt-get -y install libxml2-dev r-cran-xml libcurl3-gnutls-dev
RUN apt-get -y install wget
RUN wget http://cran.r-project.org/src/contrib/XML_3.98-1.1.tar.gz
RUN wget http://cran.r-project.org/src/contrib/bitops_1.0-6.tar.gz
RUN wget http://cran.r-project.org/src/contrib/RCurl_1.95-4.5.tar.gz
RUN R CMD INSTALL XML_3.98-1.1.tar.gz
RUN R CMD INSTALL bitops_1.0-6.tar.gz
RUN R CMD INSTALL RCurl_1.95-4.5.tar.gz
RUN R -e 'source("http://bioconductor.org/biocLite.R"); \
biocLite(c("BiocInstaller", "AnnotationDbi", "DBI", "RSQLite", "IRanges", "Biobase", "S4Vectors", "BiocGenerics"), ask=FALSE); \
install.packages(c("RUnit", "codetools", "MASS", "lattice", "Matrix", "nlme", "survival", "boot", "cluster", "foreign", "KernSmooth", "rpart", "class", "nnet", "spatial", "mgcv"), repos="http://cran.ism.ac.jp/")'