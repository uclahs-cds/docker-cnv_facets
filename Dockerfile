FROM blcdsdockerregistry/bl-base:1.0.0 AS builder

# Use conda to install tools and dependencies into /usr/local
ENV CNVFACETS_VERSION=0.16.0 \
    SAMTOOLS_VERSION=1.9 \
    MSCOREFONTS_VERSION=0.0.1
RUN conda create -qy -p /usr/local \
        -c bioconda \
        -c conda-forge \
        cnv_facets==${CNVFACETS_VERSION} \
        samtools==${SAMTOOLS_VERSION} \
        mscorefonts==${MSCOREFONTS_VERSION}

# Install dependencies that are not properly handled by conda above
RUN R -e 'install.packages("BiocManager", repos="http://cran.us.r-project.org"); BiocManager::install("GenomeInfoDbData")'

# Deploy the target tools into a base image
FROM ubuntu:20.04
COPY --from=builder /usr/local /usr/local

LABEL maintainer="Cyriac Kandoth <ckandoth@gmail.com>"
