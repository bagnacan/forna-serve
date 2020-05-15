<div id="top"></div>

[![Docker Repository on Quay](https://quay.io/repository/bagnacan/forna-serve/status "Docker Repository on Quay")](https://quay.io/repository/bagnacan/forna-serve)

# forna-serve

Forna-serve wraps a custom ViennaRNA [forna](https://github.com/ViennaRNA/forna)
web-server, to display and edit RNA triplexes as shown in the [TriplexRNA](https://triplexrna.org)
database.

- [Installation requirements](#installation-requirements)
- [Run forna-serve](#run-forna-serve)
- [Usage](#usage)
  - [URL syntax](#url-syntax)
  - [Example](#example)



## Installation requirements

The only requirement is [Docker](https://www.docker.com/), which can be
installed in different ways depending on the underlying operative system:
- Unix users should follow the [Docker installation for Linux](https://docs.docker.com/engine/install/)
- MacOS 10.13+ users should follow the [Docker installation for Mac](https://docs.docker.com/docker-for-mac/install/)
- Windows 10+ users, should follow the [Docker installation for Windows](https://docs.docker.com/docker-for-windows/install/)
- For legacy systems, users can rely on the [Docker Toolbox](https://docs.docker.com/toolbox/overview/).
<p align="right"><a href="#top">&#x25B2; back to top</a></p>



## Run forna-serve

To run forna-serve, you need to run its docker container. Type:
```
docker run -d -p 9090:8080 quay.io/bagnacan/forna-serve
```

The forna-serve web-service is now listening on your host's port 9090.
You can test its docker container by opening your browser, and type:
```
localhost:9090/ping
```

You should receive a ``pong`` reply. If so, the service is up and running!  
You can now send proper forna queries to visualize and edit RNA triplexes.
<p align="right"><a href="#top">&#x25B2; back to top</a></p>



## Usage

Here we explain the input syntax that is required for requesting RNA triplex
visualizations, and provide an example to display the triplex formed by:

- Human target gene [E2F1](https://www.ncbi.nlm.nih.gov/nuccore/NM_005225)
- Human miRNA [hsa-miR-205](http://www.mirbase.org/cgi-bin/mirna_entry.pl?acc=MIMAT0000266)
- Human miRNA [hsa-miR-342-3p](http://www.mirbase.org/cgi-bin/mirna_entry.pl?acc=MIMAT0000753).
<p align="right"><a href="#top">&#x25B2; back to top</a></p>
