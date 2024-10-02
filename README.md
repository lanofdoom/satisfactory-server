# LAN of DOOM Satisfactory Server

# Installation

Run `docker pull ghcr.io/lanofdoom/satisfactory-server:latest`

# Development

```
bazel run //:image_tarball
mkdir -p data
docker run --rm -it -v ${PWD}/data:/opt/game/FactoryGame/Saved -p 7777:7777 -p 7777:7777/udp -u $UID satisfactory-server:bazel
```
