FROM ubuntu:22.04

RUN apt-get update && \
  apt-get install -y git python3 python3-venv python3-pip wireguard openresolv && \
  apt-get clean && \
  git clone https://github.com/hsand/pia-wg.git && \
  cd pia-wg && \
  python3 -m venv venv && \
  bash -c "source venv/bin/activate && pip install -r requirements.txt"
