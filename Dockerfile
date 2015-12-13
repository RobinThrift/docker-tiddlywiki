# vim:set ft=dockerfile:
FROM node:argon

# Create a nonroot user, and switch to it
RUN /usr/sbin/useradd --create-home --home-dir /usr/local/nonroot --shell /bin/bash nonroot
RUN /usr/sbin/adduser nonroot sudo
RUN chown -R nonroot /usr/local/
RUN chown -R nonroot /usr/lib/
RUN chown -R nonroot /usr/bin/
USER nonroot

WORKDIR /tmp
RUN npm i -g tiddlywiki

RUN mkdir /tiddlywiki
WORKDIR /tiddlywiki
RUN tiddlywiki wiki
VOLUME /tiddlywiki/wiki

ENV USERNAME ""
ENV PASSWORD ""
ENV PATH ""
EXPOSE 8080

CMD ["tiddlywiki", "wiki", "--server", "$:/core/save/all", "text/plain", "text/html", "$USERNAME", "$PASSWORD", "0.0.0.0", "$PATH"]
