FROM debian:latest

WORKDIR /home
RUN apt update && apt-get install -y \
    ffmpeg \
    git-all \
    python3 \
    python3-pip

RUN pip install -U openai-whisper --break-system-packages
