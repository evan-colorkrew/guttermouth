import time
from mistral_inference.model import Transformer
from mistral_inference.generate import generate

from mistral_common.tokens.tokenizers.mistral import MistralTokenizer
from mistral_common.protocol.instruct.messages import UserMessage
from mistral_common.protocol.instruct.request import ChatCompletionRequest

start_time = time.time()

mistral_models_path = "/models/Mistral-7B-Instruct-v0.3"

tokenizer = MistralTokenizer.from_file(f"{mistral_models_path}/tokenizer.model.v3")
model = Transformer.from_folder(mistral_models_path)

with open("./prompt.txt", "r") as file:
    prompt = file.read()

# get the text from the file ../transcription/test-1.txt
with open("../transcription/test-1.txt", "r") as file:
    userMsg = file.read()

completion_request = ChatCompletionRequest(messages=[UserMessage(content=f"{prompt} \"{userMsg}\"")])

tokens = tokenizer.encode_chat_completion(completion_request).tokens

out_tokens, _ = generate([tokens], model, max_tokens=640, temperature=0.0, eos_id=tokenizer.instruct_tokenizer.tokenizer.eos_id)
result = tokenizer.instruct_tokenizer.tokenizer.decode(out_tokens[0])

print(result)

elapsed_time = time.time() - start_time

print(f"Elapsed time: {elapsed_time} seconds")