# Description
<!--- Briefly describe the changes included in this pull request and the paths to the test cases below
 !--- starting with 'Closes #...' if appropriate --->

### Closes #...

## Testing Results

### Docker Image Testing

- [ ] I have tested the Docker image with the `docker run` command as described below.

#### Test the Docker image with at least one sample. Verify the new Docker image works using:

```docker run -u $(id -u):$(id -g) –w <working-directory> -v <directory-you-want-to-mount>:<how-you-want-to-mount-it-within-the-docker> --rm <docker-image-name> <command-to-the-docker-with-all-parameters>```

#### My command:

```Provide the command you ran here```

### Test Cases

- Case 1
    - sample:    <!-- e.g. A-mini S2.T-1, A-mini S2.T-n1 -->
    - input csv: <!-- path/to/input.csv -->
    - config:    <!-- path/to/xxx.config -->
    - output:    <!-- path/to/output -->
- Case 2
    - sample:    <!-- e.g. A-mini S2.T-1, A-mini S2.T-n1 -->
    - input csv: <!-- path/to/input.csv -->
    - config:    <!-- path/to/xxx.config -->
    - output:    <!-- path/to/output -->

# Checklist
<!--- Please read each of the following items and confirm by replacing the [ ] with a [X] --->

### Formatting

- [ ] I have read the [code review guidelines](https://uclahs-cds.atlassian.net/wiki/spaces/BOUTROSLAB/pages/3187646/Code+Review+Guidelines) and the [code review best practice on GitHub check-list](https://uclahs-cds.atlassian.net/wiki/spaces/BOUTROSLAB/pages/3189956/Code+Review+Best+Practice+on+GitHub+-+Check+List).

- [ ] The name of the branch is meaningful and well formatted following the [standards](https://uclahs-cds.atlassian.net/wiki/spaces/BOUTROSLAB/pages/3189956/Code+Review+Best+Practice+on+GitHub+-+Check+List), using \[AD_username (or 5 letters of AD if AD is too long)]-\[brief_description_of_branch].

- [ ] I have set up or verified the branch protection rule following the [github standards](https://uclahs-cds.atlassian.net/wiki/spaces/BOUTROSLAB/pages/3190380/GitHub+Standards#GitHubStandards-Branchprotectionrule) before opening this pull request.

### File Updates

- [ ] I have ensured that the version number update follows the [versioning standards](https://uclahs-cds.atlassian.net/wiki/spaces/BOUTROSLAB/pages/3188472/Docker+image+versioning+standardization).

- [ ] I have updated the version number in the `Dockerfile`, `README.md` and `metadata.yaml` files.

- [ ] I have updated the dependencies and added my name to the maintainer list in the `Dockerfile`.

- [ ] I have updated the feature changes in the `README.md` (optional).

- [ ] I have added the changes included in this pull request to the `CHANGELOG.md` under the next release version or unreleased, and updated the date.

### GitHub Packages Auto Build Rules

- [ ] I have not manually pushed this Docker image to the uclahs-cds container registry (`ghcr.io/uclahs-cds`) on [GitHub](https://github.com/orgs/uclahs-cds/packages).

- [ ] **I have updated the `image_name`** in the `metadata.yaml` which is required by GitHub action to automatically build and push the image.
