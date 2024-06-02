# Guttermouth
Talk to text, PC and SFW.
Named after the punk band.

## Dependencies

- debian
- docker
- ffmpeg
- git
- python3
- python3-pip
- [whisper](https://github.com/openai/whisper)

## Setup

```bash
`sh ./start.sh`
```

First-time setup requires the Docker daemon to be restarted.

## Usage

### Test GPU availability

```bash
nvidia-smi
```

### Example transcribing audio file

```bash
whisper ./audio/{filename} --output_dir ./transcription --output_format txt
```
