FROM python:3.11-slim

ARG TRACKIO_VERSION=0.28.0

RUN pip install --no-cache-dir trackio==${TRACKIO_VERSION}

ENV TRACKIO_PORT=7860
ENV TRACKIO_DIR=/data

# EXPOSE is primarily for documentation, the actual port is defined by the env variable
EXPOSE 7860


CMD export GRADIO_SERVER_PORT=${TRACKIO_PORT} && trackio show --host 0.0.0.0
