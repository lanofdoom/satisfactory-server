# LAN of DOOM Satisfactory Server

# Installation
Run ``docker pull ghcr.io/lanofdoom/satisfactory-server:latest``

# Development

```
 bazel run //:image_tarball && docker run --rm -it -u nobody satisfactory-server:bazel
 ```