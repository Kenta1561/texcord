FROM ubuntu:20.04
COPY entrypoint.sh /
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    curl \
    texlive-latex-extra
ENTRYPOINT [ "/entrypoint.sh" ]

