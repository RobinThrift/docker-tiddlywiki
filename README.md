# Tiddly Wiki
[Tiddly Wiki](https://github.com/Jermolene/TiddlyWiki5) using Docker.

## Config
- port `8080` is exposed
- env `$USERNAME` defaults to none
- env `$PASSWORD` defaults to none
- volume `/wiki/data` is where the data is stored
- volume `/wiki/plugins` for plugins
- volume `/wiki/themes` for themes

## Usage
- `make build` will build the image
- `make push` will push the image to docker hub
- `make test` tests the image
