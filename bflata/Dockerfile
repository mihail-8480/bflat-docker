FROM mihail8480/bflat:latest AS build
COPY ./bflata /build
WORKDIR /build
RUN bflat build BFlatA.cs --stdlib Dotnet
FROM mihail8480/bflat:latest AS release
COPY --from=build /build/BFlatA /opt/bflata/bflata
COPY --from=build /build/net7.0.exclu /opt/bflata/net7.0.exclu
RUN ln -s /opt/bflata/bflata /usr/bin/bflata
RUN apk add --no-cache icu-dev