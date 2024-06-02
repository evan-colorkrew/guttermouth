FROM debian:latest

WORKDIR /home

RUN apt-get update && apt-get install -y \
    curl \
    ffmpeg \
    git-all \
    python3 \
    python3-pip

# Install OpenAI Whisper
RUN pip install -U openai-whisper --break-system-packages

# Install NVIDIA Container Toolkit
RUN curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
    && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
      sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
      tee /etc/apt/sources.list.d/nvidia-container-toolkit.list

RUN apt-get update && apt-get install -y \
    nvidia-container-toolkit

RUN nvidia-ctk runtime configure --runtime=docker
