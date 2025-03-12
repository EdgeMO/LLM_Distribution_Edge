cmake --build build --config Release -j 8

./build/bin/llama-cli -m /home/wu/workspace/qwen2.5-7b-instruct-q4_0.gguf -p "翻译为英文：我是将军" -n 128