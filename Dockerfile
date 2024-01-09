FROM ubuntu:22.04
ARG ANSIBLE_VERSION=9.1.2
RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    gcc \
    python3 \
    python3-pip \
    ssh && \
    rm -rf /var/lib/apt/lists/*
RUN pip3 install --upgrade pip; \
    pip3 install "ansible==${ANSIBLE_VERSION}"; \
    pip3 install ansible \

