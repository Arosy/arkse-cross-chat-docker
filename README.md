# arkse-cross-chat-docker

### Description

A dockerized solution based on 'Cross-Ark-Chat' by spikeydragoon

### Requirements

- [docker](https://docs.docker.com/get-docker/)
- Ideally, but not required: [docker-compose](https://docs.docker.com/compose/install/)

##### `Install on ubuntu/debian/raspbian`
```bash
# install docker only
sudo apt-get update; sudo apt-get install docker.io -yq
```

### Get it up and running

##### `docker run`

```bash
$ docker run -d --rm -v "/some/path/to/my-dir:/var/app/Config" inquinator/arkse-cross-chat:latest
```

### Links

- [Original Project](https://github.com/spikeydragoon/Cross-Ark-Chat)

- [Dockerhub](https://hub.docker.com/r/inquinator/arkse-cross-chat)

- [GitHub](https://github.com/Arosy/arkse-cross-chat-docker)

### TODO

- currently none.

### Contribute

- Feel free to submit any changes you see fit or do whatever you want, because its MIT licensed.

### Changelog

**v0.0.3**
- now the app is loading correctly, had to resolve some issues around the proper .net runtime.

**v0.0.2**
- fixed an issue with the base image being incorrect.

**v0.0.1**
- built the docker scripts to containerize the application made by `spikeydragoon`.
