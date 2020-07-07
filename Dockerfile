FROM ubuntu:bionic

# Install required python & git packages
RUN apt-get update && apt-get install -y \
	python3.8-dev \
	python3-pip \
	python-setuptools \
	openssl && \
    # Delete all the apt list files to keep clean
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Install python modules
RUN pip3 install requests bs4 lxml