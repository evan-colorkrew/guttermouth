#!/bin/bash
mkdir /models
git clone https://${HF_USERNAME}:${HF_TOKEN}@huggingface.co/mistralai/Mistral-7B-Instruct-v0.3 /models/Mistral-7B-Instruct-v0.3
python3 ./setup-mistral-instruct.py
