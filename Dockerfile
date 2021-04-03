FROM kenta1561/ubuntu-texlive:release-v2
COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]

