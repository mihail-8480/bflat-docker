FROM frolvlad/alpine-glibc as build
ARG VERSION
RUN apk add --no-cache wget 
WORKDIR /build
RUN wget https://github.com/bflattened/bflat/releases/download/v${VERSION}/bflat-${VERSION}-linux-glibc-x64.tar.gz -O bflat-bin.tar.gz
WORKDIR /build/out
RUN tar -xvf ../bflat-bin.tar.gz
FROM frolvlad/alpine-glibc as release
RUN apk add --no-cache zlib libstdc++
COPY --from=build /build/out /opt/bflat
RUN ln -s /opt/bflat/bflat /usr/bin/bflat