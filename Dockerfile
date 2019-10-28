From continuumio/miniconda3
#ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt install -y git wget gcc && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN conda config --add channels conda-forge && \
    conda config --add channels bioconda && \
    conda config --add channels default


Run conda install -c bioconda spades
