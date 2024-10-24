# OPENAI-GEMINI-DOCKER

dockerize https://github.com/PublicAffairs/openai-gemini.git for local hosting from docker container.  

> [!NOTE]
> - build changes default 8080 port to 11434 in node.mjs
> - does not install deno or bun in docker image
> - docker image will run node.mjs via "npm run start" when started
---

# STEPS
On a HOST (git and docker installed)
```sh
git clone https://github.com/PublicAffairs/openai-gemini.git .
git clone https://github.com/t00geek4u/openai-gemini-docker.git docker
mv docker/Dockerfile .
mv docker/docker-compose.yml .
```

```sh
docker compose up
```
_..or to daemonzie.._
```sh
docker compose up -d
```

HOST will be listening on 11434 for API calls.
