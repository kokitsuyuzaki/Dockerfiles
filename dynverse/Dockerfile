FROM snakemake/snakemake:v8.27.1

RUN apt-get update && \
    ### apt-get installができない場合のおまじない ###
    mkdir -p /var/lib/dpkg && \
    touch /var/lib/dpkg/status && \
    dpkg --configure -a && \
    #############################################
    ##### 最新のRをDebianに入れるためのおまじない #####
    apt update && \
    apt install -y --no-install-recommends software-properties-common dirmngr && \
    mkdir -p /etc/apt/keyrings && \
    mkdir -p ~/.gnupg && \
    chmod 700 ~/.gnupg && \
    gpg --no-default-keyring --keyring /etc/apt/keyrings/cran-debian-key.gpg --keyserver keyserver.ubuntu.com --recv-keys 0xB8F25A8A73EACF41 && \
    echo "deb [signed-by=/etc/apt/keyrings/cran-debian-key.gpg] https://cloud.r-project.org/bin/linux/debian bookworm-cran40/" | tee /etc/apt/sources.list.d/cran.list && \
    #############################################
    apt update && \
    apt-get install -y r-base libssl-dev libcurl4-openssl-dev libfontconfig1-dev libharfbuzz-dev libfribidi-dev libopenblas-dev libhdf5-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev fuse-overlayfs && \
    R -e 'install.packages(c("igraph", "hdf5r", "tidyverse", "Seurat", "devtools"), repos="https://cloud.r-project.org"); devtools::install_github("dynverse/dyno", upgrade = TRUE); library("igraph"); library("hdf5r"); library("tidyverse"); library("Seurat"); library("dyno")' && \
    singularity --version