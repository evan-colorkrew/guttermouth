#!/bin/bash
echo "hf login"
huggingface-cli login --token=${HF_TOKEN}
echo "mkdir"
mkdir /models
echo "git clone"
git clone https://${HF_USERNAME}:${HF_TOKEN}@huggingface.co/mistralai/Mistral-7B-Instruct-v0.3 /models/Mistral-7B-Instruct-v0.3
echo "mistral setup"
python3 /setup-mistral-instruct.py
