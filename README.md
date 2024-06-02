# Guttermouth
Talk to text, PC and SFW.
Named after the punk band.

## Setup

### Env vars

Copy the _.env.example_ file in the project root and rename it to _.env_.

```bash
cp .env.example .env
```

Fill in missing values as necessary.

### Start containers

#### With GPU (recommended)

First-time setup with GPU requires the Docker daemon to be restarted.

```bash
`sh ./start-gpu.sh`
```

#### Without GPU

```bash
`sh ./start.sh`
```

### Set up

To prepare the container for usage, please run the following.

```bash
`sh ./setup.sh`
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
