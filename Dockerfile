# vim:set ft=dockerfile:
FROM node:argon

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
