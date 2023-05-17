# devnet-backup-monitor

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
$ docker run -d --rm --name="backup_monitor" \
                     -v "/some/path/to/my-dir:/var/app/Config" \
                     -e NAME="my-backup" inquinator/arkse-cross-chat:latest
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

**v0.0.1**
- built the docker scripts to containerize the application made by `spikeydragoon`.
