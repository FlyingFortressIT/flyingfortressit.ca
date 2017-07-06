FROM ubuntu:xenial

# Install the AWS CLI for pushing the output to S3.
RUN apt-get update && apt-get install -y python-pip curl jq wget git && pip install --upgrade awscli

# Determine the most recent release from GitHub of Hugo (Linux 64 .deb), fetch, and install it.
RUN wget -qO- https://api.github.com/repos/gohugoio/hugo/releases | jq -r '.[0].assets[].browser_download_url' | grep "Linux-64bit.deb" | wget -qO /root/hugo.deb -i -
RUN dpkg -i /root/hugo.deb && rm /root/hugo.deb && /usr/local/bin/hugo version
