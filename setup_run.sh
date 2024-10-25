git clone https://github.com/PublicAffairs/openai-gemini.git
git clone https://github.com/t00geek4u/openai-gemini-docker.git
mv openai-gemini-docker/Dockerfile openai-gemini
mv openai-gemini-docker/docker-compose.yml openai-gemini
rm -fr openai-gemini-docker
cd openai-gemini
docker compose up -d
docker logs openai-gemini
sleep 5
echo -e "\n"
