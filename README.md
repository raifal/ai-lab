# ai-lab



1.) To see the gpu working:
sudo apt install intel-gpu-tools
sudo intel_gpu_top

2.) to configure the docker-compose "group_add"
getent group render | cut -d: -f3
getent group video | cut -d: -f3

add to docker-compose.yml and restart
docker compose down && docker compose up -d

3.) Pull a model

docker exec ollama pull llama3.2:3b
docker exec ollama pull qwen2.5:3b
docker exec ollama ollama list

4.) Test it

docker exec -it ollama ollama run llama3.2:3b
----------

sudo apt-get update
sudo apt-get install git
