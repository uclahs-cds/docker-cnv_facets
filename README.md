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

## Discussions

- [Issue tracker](https://github.com/uclahs-cds/docker-cnv_facets/issues) to report errors and enhancement ideas.
- Discussions can take place in [docker-cnv_facets Discussions](https://github.com/uclahs-cds/docker-cnv_facets/discussions)
- [docker-cnv_facets pull requests](https://github.com/uclahs-cds/docker-cnv_facets/pulls) are also open for discussion

---

## Contributors

Please see list of [Contributors](https://github.com/uclahs-cds/docker-cnv_facets/graphs/contributors) at GitHub.

---

## References
1. https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5027494/
2. https://github.com/mskcc/facets
3. https://github.com/dariober/cnv_facets

---

## License

Author: 'Cyriac Kandoth', 'Mohammed Faizal Eeman Mootor'

docker-cnv_facets is licensed under the GNU General Public License version 2. See the file LICENSE for the terms of the GNU GPL license.

docker-cnv_facets can be used to create a docker instance to use cnv_facets.

Copyright (C) 2021-2024 University of California Los Angeles ("Boutros Lab") All rights reserved.

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.
