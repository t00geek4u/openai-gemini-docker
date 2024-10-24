Purpose is to dockerize https://github.com/PublicAffairs/openai-gemini.git
* docker image build changes default port 8080 to 11434

STEPS
- git clone https://github.com/PublicAffairs/openai-gemini.git .
- git clone https://github.com/t00geek4u/openai-gemini-docker.git docker
- mv docker/Dockerfile .
- mv docker/docker-compose.yml .
- docker compose up  /  docker compose up -d
