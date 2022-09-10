# Docker container for Shayllachiq Frontend

This is a container to run Shayllachiq's Frontend.

# Steps to run it

- Use the recursive flag to clone the `submodule`.
```bash
  git clone --recursive https://github.com/Jclavo/shayllachiq-frontend-container
```

**DOCKER**

- Start docker service (optional)
```bash
  sudo service docker start
``` 
- Build container
```bash
  docker-compose build
```
- Start container
```bash
  docker-compose up
  docker-compose up -d (silent mode)
```

**FRONTEND**

- Access container by ssh.
```bash
    docker exec -it shayllachiq-frontend /bin/ash
```

- To check that everything is ok access to url.
```bash
    http://0.0.0.0:4300/
```