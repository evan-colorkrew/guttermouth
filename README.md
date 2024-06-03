# Guttermouth
Talk to text, PC and SFW.
Named after the punk band.

## Setup

### 1. Env vars

Copy the _.env.example_ file in the project root and rename it to _.env_.

```bash
cp .env.example .env
```

Fill in missing values as necessary.

### 2. Build images

#### GPU (recommended)

First-time setup with GPU requires the Docker daemon to be restarted.

```bash
`sh ./build.sh`
```

#### CPU

```bash
`sh ./build-cpu.sh`
```

### Run containers

```bash
`sh ./start.sh`
```

#### CPU

```bash
`sh ./start-cpu.sh`
```

## Usage

### Test GPU availability

```bash
nvidia-smi
```

### Example transcribing audio file

```bash
whisper ./audio/{filename} --output_dir ./transcription --output_format txt
```

## External docs

- https://docs.docker.com/compose/gpu-support/
- https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html
- https://github.com/openai/whisper
- https://huggingface.co/mistralai/Mistral-7B-Instruct-v0.3

## Notes

- Make sure your HF personal access token has access to the required repos
