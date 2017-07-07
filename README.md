# Flying Fortress IT Website

Represents the hugo source and build tooling for https://www.flyingfortressit.ca.

This site uses the hugo Dimension, included as a git submodule.

The Docker file builds a container from Ubuntu Xenial that contains the latest Hugo release, suitable for building and deploying the website in conjunction with AWS CodeBuild (and the included buildspec.yml file).

## Build dependencies

The build process depends on a `GA_TRACKING_ID` environment variable in the CodeBuild project. There's some value in keeping the tracking ID out of the repo.

It also depends on a `TARGET_S3_BUCKET` environment variable in the CodeBuild project, to keep the S3 bucket name out of the repo.
