# Changelog
All notable changes to the tool_name Docker file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

---

## [0.16.0] - 2024-04-18
### Added
- Add PR template to repo
- Add `Docker-build-release.yaml` to repo
- Add `bldocker` as group and user to Dockerfile
- Set `bldocker` as default user

### Changed
- Update CICD-base docker registry to `ghcr.io/uclahs-cds`
- Standardize `README.md`
- Standardize `metadata.yaml`
- Standardize Dockerfile
- Use condaforge as builder

### Removed
- Remove `blcdsdockerregistry/bl-base` as builder

---

## [0.16.0] - 2021-08-07
### Added
- Dockerfile and documentation for cnv_facets
