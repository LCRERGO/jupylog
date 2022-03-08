# Prolog + Jupyter Dockerfile
FROM jupyter/datascience-notebook:latest

USER root
RUN apt-get update && \
    apt-get install --yes --no-install-recommends \
    swi-prolog-nox && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install --upgrade jswipl

WORKDIR /tmp/jswipl
RUN wget https://raw.githubusercontent.com/targodan/jupyter-swi-prolog/master/kernel.json 
WORKDIR /
RUN mv /tmp/jswipl ${CONDA_DIR}/share/jupyter/kernels/

USER "${NB_UID}"
WORKDIR "${HOME}"


