FROM kenta1561/ubuntu-texlive:v2
COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]

