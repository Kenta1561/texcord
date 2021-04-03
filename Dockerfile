FROM kenta1561/ubuntu-texlive:1.0
COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]

