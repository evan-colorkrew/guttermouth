from huggingface_hub import snapshot_download
from pathlib import Path
import os

mistral_models_path = os.path.abspath("/models/Mistral-7B-Instruct-v0.3")
snapshot_download(repo_id="mistralai/Mistral-7B-Instruct-v0.3", allow_patterns=["params.json", "consolidated.safetensors", "tokenizer.model.v3"], local_dir=mistral_models_path)
