# syntax=docker/dockerfile:1

# FROM tensorflow/tensorflow:latest-gpu

FROM tensorflow/tensorflow:latest-gpu-jupyter

WORKDIR /projet_leyenda

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 8888

# ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser"]