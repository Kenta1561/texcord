FROM kenta1561/ubuntu-texlive:release-v1
COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]

