FROM ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
	apt-get install -y sudo \
	build-essential curl \
	libcurl4-openssl-dev \
	libssl-dev wget \
	python3.6 python3-pip \
	python3-dev git

RUN pip3 install --upgrade pip

RUN apt-get update && \
	apt-get install -y sudo \
	texlive-latex-recommended \
	texlive-fonts-recommended \
	texlive-latex-extra \
	latexmk \
	texlive-lang-greek \
	texlive-luatex \
	texlive-xetex \
	texlive-fonts-extra \
	dvipng \
	graphviz

RUN wget https://raw.githubusercontent.com/wpilibsuite/frc-docs/master/source/requirements.txt

RUN pip3 install -r requirements.txt
