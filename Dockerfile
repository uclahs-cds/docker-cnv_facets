ARG MINIFORGE_VERSION=23.3.1-1
ARG UBUNTU_VERSION=23.04

FROM condaforge/mambaforge:${MINIFORGE_VERSION} AS builder

# Use conda to install tools and dependencies into /usr/local
ENV CNVFACETS_VERSION=0.16.0 \
    SAMTOOLS_VERSION=1.9 \
    MSCOREFONTS_VERSION=0.0.1
RUN mamba create -qy -p /usr/local \
        -c bioconda \
        -c conda-forge \
        cnv_facets==${CNVFACETS_VERSION} \
        samtools==${SAMTOOLS_VERSION} \
        mscorefonts==${MSCOREFONTS_VERSION}

# Install dependencies that are not properly handled by conda above
RUN R -e 'install.packages("BiocManager", repos="http://cran.us.r-project.org"); BiocManager::install("GenomeInfoDbData")'

# Deploy the target tools into a base image
FROM ubuntu:${UBUNTU_VERSION} AS final
COPY --from=builder /usr/local /usr/local

# Add a new user/group called bldocker
RUN groupadd -g 500001 bldocker && \
    useradd -r -u 500001 -g bldocker bldocker

# Change the default user to bldocker from root
USER bldocker

LABEL maintainer="Mohammed Faizal Eeman Mootor <mmootor@mednet.ucla.edu>" \
    org.opencontainers.image.source=https://github.com/uclahs-cds/docker-cnv_facets
