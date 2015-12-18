# vim:set ft=dockerfile:
FROM node:argon

RUN mkdir /wiki
RUN mkdir /wiki/data
RUN mkdir /wiki/themes
RUN mkdir /wiki/plugins
WORKDIR /wiki
RUN npm i tiddlywiki
COPY start.sh .
VOLUME /wiki/data
VOLUME /wiki/plugins
VOLUME /wiki/themes

ENV USERNAME ""
ENV PASSWORD ""
ENV PATH ""
ENV TIDDLYWIKI_PLUGIN_PATH "/wiki/plugins"
ENV TIDDLYWIKI_THEME_PATH "/wiki/themes"
EXPOSE 8080

CMD ./start.sh
