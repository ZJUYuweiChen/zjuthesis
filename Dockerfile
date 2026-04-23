FROM texlive/texlive:latest-full
ARG TARGETARCH

ARG GITHUB_DOMAIN=gh-proxy.com/github.com

# Install gosu for privilege dropping
RUN apt-get update && apt-get install -y gosu && rm -rf /var/lib/apt/lists/*

# latex-chinese-fonts
RUN --mount=type=cache,target=/tmp \
    curl -Lo /tmp/latex-chinese-fonts.zip \
        https://${GITHUB_DOMAIN}/Haixing-Hu/latex-chinese-fonts/archive/refs/heads/master.zip && \
    unzip /tmp/latex-chinese-fonts.zip -d /usr/share/fonts/latex-chinese-fonts && \
    fc-cache -fv

# create user (placeholder UID, will be adjusted at runtime)
ARG USERNAME=zjuer
ARG GROUPNAME=zjuer
RUN groupadd ${GROUPNAME} || true && \
    useradd -g ${GROUPNAME} -m -s /bin/bash ${USERNAME} || true

# prepare workspace
ENV WORKSPACE=/workspace
RUN mkdir -p ${WORKSPACE} && chown -R ${USERNAME}:${GROUPNAME} ${WORKSPACE}
WORKDIR ${WORKSPACE}

# copy entrypoint
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

# auto compile on file changes
CMD ["latexmk", "-pvc", "-view=none"]
