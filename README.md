# Docker Images for bflat and bflata
## Images
Built images can be found on dockerhub as:
* [mihail8480/bflat](https://hub.docker.com/r/mihail8480/bflata)
* [mihail8480/bflata](https://hub.docker.com/r/mihail8480/bflata)


## Usage
* `mihail8480/bflat` provides an executable called [`bflat`](https://github.com/bflattened/bflat) which is located in `/usr/bin` and is in `$PATH`.
* `mihail8480/bflata` provides an executable called [`bflata`](https://github.com/xiaoyuvax/bflata) which is located in `/usr/bin` and is in `$PATH`, it also provides everything inside of `mihail8480/bflat`.

The executables are symlinks to the real binaries located in `/opt`.

If you are building an executable that will be executed inside of docker you should use a `glibc` compatible distro, if you want to use Alpine Linux (which uses `musl` by default) you should probably use `frolvlad/alpine-glibc` as your base and install the `zlib` and `libstdc++`  packages - if you have globalization enabled (if you don't pass the `--no-globalization` flag) you also need `icu-dev`.

## Build Instructions
To build the images you need to clone this repository with submodules:
```sh
git clone --recurse-submodules https://github.com/mihail-8480/bflat-docker
```
### bflat
You need to define an environment variable called `VERSION` that specifies which version of bflat should be downloaded (ex: `7.0.1`):
```sh
export VERSION=7.0.1
```
Then you can build the image using the following command:
```sh
docker build -t "mihail8480/bflat:latest" --build-arg=VERSION bflat
```

### bflata
You can build the image using the following command:
```sh
docker build  -t "mihail8480/bflata:latest" bflata
```
