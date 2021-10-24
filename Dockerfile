FROM registry.gitlab.com/jitesoft/dockerfiles/alpine:3.14
ARG VERSION

LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft" \
      maintainer.org.uri="https://jitesoft.com" \
      com.jitesoft.project.repo.type="git" \
      com.jitesoft.project.repo.uri="https://gitlab.com/jitesoft/dockerfiles/cosign" \
      com.jitesoft.project.repo.issues="https://gitlab.com/jitesoft/dockerfiles/cosign/issues" \
      com.jitesoft.project.registry.uri="registry.gitlab.com/jitesoft/dockerfiles/cosign" \
      com.jitesoft.app.cosign.version="${VERSION}"

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
