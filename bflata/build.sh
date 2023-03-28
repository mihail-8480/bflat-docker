#!/bin/bash
export VERSION=1.4.2.0
docker build -t "mihail8480/bflata:${VERSION}" -t "mihail8480/bflata:latest" . || exit 1
docker push "mihail8480/bflata:${VERSION}" || exit 1
docker push "mihail8480/bflata:latest" || exit 1