FROM debian:stretch-slim

COPY utils/sources.list /etc/apt/sources.list.d/stable.list
RUN apt-get update && apt-get install --no-install-recommends -y \
    git \
    python-flask \
    python-jinja2 \
    python-biopython \
    python-future \
    python-scipy \
    libgomp1 \
    libgsl2 \
    libpython2.7 \
    python-pip \
    && apt-get clean

# ViennaRNA Python bibdings
COPY utils/python-rna_2.4.1-1_amd64.deb /python-rna.deb
RUN dpkg -i /python-rna.deb
RUN rm /python-rna.deb

# ViennaRNA forgi
RUN pip install logging_exceptions \
    beautifulsoup4 \
    setuptools \
    soupsieve
WORKDIR /srv
COPY forgi forgi
WORKDIR forgi
RUN python setup.py install

# ViennaRNA forna
WORKDIR /srv
COPY forna forna

ENV PATH="/srv/forna:${PATH}"
EXPOSE 8080
ENTRYPOINT ["forna_server", "-p", "8080", "-o", "0.0.0.0", "-s"]
CMD ["forna_server", "-p", "8080", "-o", "0.0.0.0", "-s"]
