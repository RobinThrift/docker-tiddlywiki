#! /bin/bash

if [ ! -a "/wiki/data/tiddlywiki.info" ]; then
    /usr/local/bin/node /wiki/node_modules/tiddlywiki/tiddlywiki.js /wiki/data --init server
fi

/usr/local/bin/node /wiki/node_modules/tiddlywiki/tiddlywiki.js /wiki/data --server 8080 $:/core/save/all text/plain text/html "$USERNAME" "$PASSWORD" 0.0.0.0 "$PATH"
