#!/bin/bash
export VERSION=7.0.1
docker build --build-arg=VERSION -t "mihail8480/bflat:${VERSION}" -t "mihail8480/bflat:latest" . || exit 1
docker push "mihail8480/bflat:${VERSION}" || exit 1
docker push "mihail8480/bflat:latest" || exit 1