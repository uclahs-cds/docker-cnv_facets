# docker-cnv_facets
Dockerfile for [cnv_facets](https://github.com/dariober/cnv_facets), a convenient wrapper around [FACETS](https://github.com/mskcc/facets). This wrapper takes a tumor-normal pair of BAMs as input, and produces a VCF listing allele-specific copy-number variants.

The image is located in the Boutros Lab Docker Hub repo: https://hub.docker.com/repository/docker/blcdsdockerregistry/cnv_facets

# Documentation
Guide to cnv_facets usage and results [here](https://github.com/dariober/cnv_facets/blob/master/README.md)

Tips for setting `--cval` parameter [here](https://github.com/mskcc/facets/issues/76#issuecomment-385724786)

Tips for understanding FACETS results [here](https://bandla-chai.gitbook.io/facets-preview/reviewing-fits#3-2-qc-summary)

# Version
| Tool | Version |
|--------|-------|
|cnv_facets|0.16.0|
---

## References
1. https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5027494/
2. https://github.com/mskcc/facets
3. https://github.com/dariober/cnv_facets
