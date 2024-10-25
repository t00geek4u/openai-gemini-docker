# OPENAI-GEMINI-DOCKER

Dockerize the [openai-gemini](https://github.com/PublicAffairs/openai-gemini.git) repository for local hosting via Docker. This setup allows you to easily build and run the project in a container.

### Key Notes
- The default port (8080) is changed to **11434** in `node.mjs`.
- This Docker image **does not install** Deno or Bun.
- The container starts the app using `npm run start`, running `node.mjs`.

---

## Prerequisites

Ensure your host system has:
- **Git** installed
- **Docker** & **Docker Compose** installed

## Setup Instructions

1. Clone the required repositories:
   ```sh
   git clone https://github.com/PublicAffairs/openai-gemini.git
   git clone https://github.com/t00geek4u/openai-gemini-docker.git docker
   ```
2. Move the Docker files into the openai-gemini directory:
   ```sh
   mv docker/Dockerfile openai-gemini
   mv docker/docker-compose.yml openai-gemini
   rm -fr docker
   cd openai-gemini
   ```

## Build and Run the Container

### Start in Foreground
To build and start the container in the foreground, run:
```sh
docker compose up
```

### Start in Detached Mode
To run the container in the background (detached mode), use:
```sh
docker compose up -d
```
> **Note**: The container will listen on **port 11434** for API calls.

For more information on usage, see the [openai-gemini repository#how to use](https://github.com/PublicAffairs/openai-gemini/blob/main/readme.MD#how-to-use).


