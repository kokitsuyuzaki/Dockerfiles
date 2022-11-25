FROM rocker/shiny:4.2.2

ADD entrypoint.sh /
ADD isee.R /

RUN apt-get update \
    && apt-get install -y --no-install-recommends libglpk-dev lynx \
    && apt-get install -y --no-install-recommends xdg-utils --fix-missing \
    && apt-get clean \
    && R -e 'install.packages("BiocManager", \
    repos="https://cran.r-project.org", type="source"); \
    BiocManager::install(version = "3.16"); \
    BiocManager::valid(); \
    BiocManager::install(c("Seurat", "iSEE"), \
    ask=FALSE, force=TRUE)'

ENTRYPOINT ["/entrypoint.sh"]
