# jupylog
---------
jupylog is a Docker Image that contains Jupyter applications for data-science
and a Prolog Jupyter kernel preinstalled, heavily based on 
[Docker Jupyter Stacks](https://github.com/jupyter/docker-stacks) and uses 
[jswip](https://github.com/targodan/jupyter-swi-prolog) as the Jupyter kernel.

## Quick Start

**Example 1:**
This command pulls the `lcrergo/jupylog` image from Docker Hub if not already
downloaded. Then a container is started binding the container port `8888` (the
default for jupyter) to port `10000` in the host machine:
```bash
docker run -p 10000:8888 lcrergo/jupylog
```

**Example 2:**

This command pulls the `lcrergo/jupylog` image from Docker Hub if not already
downloaded. Then an ephemeral container is started exposing the port `10000` on
the host machine:
```bash
docker run -it --rm -p 10000:8888 -v "${PWD}":/home/jovyan/work lcrergo/jupylog
```
