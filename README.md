# OPENAI-GEMINI-DOCKER

dockerize https://github.com/PublicAffairs/openai-gemini.git for local hosting from docker container.  

docker image modified for following:
- build changes default 8080 port to 11434
- does not install deno or bun in image
- runs node.mjs via "npm run start"
---

# STEPS
- git clone https://github.com/PublicAffairs/openai-gemini.git .
- git clone https://github.com/t00geek4u/openai-gemini-docker.git docker
- mv docker/Dockerfile .
- mv docker/docker-compose.yml .
- docker compose up  /  docker compose up -d
