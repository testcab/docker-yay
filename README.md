# testcab/yay

[![docker build automated](https://img.shields.io/docker/cloud/automated/testcab/yay.svg)](https://hub.docker.com/r/testcab/yay "testcab/yay")
[![](https://images.microbadger.com/badges/image/testcab/yay.svg)](https://microbadger.com/images/testcab/yay "testcab/yay")

Docker image for Arch Linux with yay installed, useful for AUR packaging and development.

A `makepkg` user (uid=974, gid=974) is created with sudo privilege for use with *yay* and *makepkg* commands.

This docker image is auto updated as [archlinux/base](https://hub.docker.com/r/archlinux/base) image updates.

### Run as a container

Shell command:

```
docker run --rm -it testcab/yay
```

### Use as a base container

`Dockerfile`:

```
FROM testcab/yay
# custom instructions follows
```

## LICENSE

[MIT](LICENSE)
