# syntax=docker/dockerfile:experimental
FROM registry.gitlab.com/jitesoft/dockerfiles/alpine:3.14
ARG VERSION
ARG BUILD_TIME

LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft" \
      maintainer.org.uri="https://jitesoft.com" \
      com.jitesoft.project.repo.type="git" \
      com.jitesoft.project.repo.uri="https://gitlab.com/jitesoft/dockerfiles/cosign" \
      com.jitesoft.project.repo.issues="https://gitlab.com/jitesoft/dockerfiles/cosign/issues" \
      com.jitesoft.project.registry.uri="registry.gitlab.com/jitesoft/dockerfiles/cosign" \
      com.jitesoft.app.cosign.version="${VERSION}" \
      # Open container labels
      org.opencontainers.image.version="${VERSION}" \
      org.opencontainers.image.created="${BUILD_TIME}" \
      org.opencontainers.image.description="Cosign on alpine linux" \
      org.opencontainers.image.vendor="Jitesoft" \
      org.opencontainers.image.source="https://gitlab.com/jitesoft/dockerfiles/cosign" \
      # Artifact hub annotations
      io.artifacthub.package.alternative-locations="oci://index.docker.io/jitesoft/cosign,oci://ghcr.io/jitesoft/cosign" \
      io.artifacthub.package.readme-url="https://gitlab.com/jitesoft/dockerfiles/cosign/-/raw/master/README.md" \
      io.artifacthub.package.logo-url="https://jitesoft.com/favicon-96x96.png"

ARG TARGETARCH
RUN --mount=type=bind,source=./binaries,target=/tmp \
    addgroup -g 1000 cosign \
 && adduser -u 1000 -G cosign -s /bin/ash -D cosign \
 && cp /tmp/cosign-${TARGETARCH} /usr/bin/cosign \
 && cp /tmp/entrypoint /usr/local/bin/entrypoint \
 && chmod +x /usr/bin/cosign \
 && chmod +x /usr/local/bin/entrypoint

USER cosign
ENTRYPOINT ["entrypoint"]
CMD ["cosign"]
