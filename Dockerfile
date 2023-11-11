FROM python:3.10.8-slim-bullseye

RUN apt-get update -qq && \
    apt-get install -y zip unzip wget curl && \
    rm -rf /var/cache/apk/*

WORKDIR /workspace-install
ADD requirements.txt .
RUN pip --no-cache-dir install -r requirements.txt

WORKDIR /workspace
CMD ["bash"]
