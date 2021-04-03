FROM kenta1561/ubuntu-texlive:latest
COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]

