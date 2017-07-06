# Flying Fortress IT Website

Represents the hugo source and build tooling for https://www.flyingfortressit.ca.

This site uses the hugo Dimension, included as a git submodule.

The Docker file builds a container from Ubuntu Xenial that contains the latest Hugo release, suitable for building and deploying the website in conjunction with AWS CodeBuild (and the included buildspec.yml file).
