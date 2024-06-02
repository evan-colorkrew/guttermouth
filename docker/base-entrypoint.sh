#!/bin/bash
# Login HF
huggingface-cli login --token=${HF_TOKEN}
# Get models
mkdir /models
git clone https://${HF_USERNAME}:${HF_TOKEN}@huggingface.co/mistralai/Mistral-7B-Instruct-v0.3 /models/Mistral-7B-Instruct-v0.3
