FROM debian:latest

WORKDIR /home

RUN apt-get update && apt-get install -y \
    curl \
    ffmpeg \
    git-all \
    git-lfs \
    python3 \
    python3-pip

# Install Python packages
RUN pip install -U \
    huggingface_hub \
    torch \
    torchvision \
    openai-whisper \
    --break-system-packages

# Install Mistral Inference
RUN pip install -U \
    mistral_inference \
    --break-system-packages

# Install NVIDIA Container Toolkit
RUN curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
    && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
      sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
      tee /etc/apt/sources.list.d/nvidia-container-toolkit.list

RUN apt-get update && apt-get install -y \
    nvidia-container-toolkit

RUN nvidia-ctk runtime configure --runtime=docker

# Copy scripts
COPY ./base/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY ./base/setup.sh /setup.sh
RUN chmod +x /setup.sh

COPY ./base/setup-mistral-instruct.py /setup-mistral-instruct.py

# Entrypoint
ENTRYPOINT '/entrypoint.sh'
