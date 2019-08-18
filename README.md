# rgbds-docker

Dockerized [RGBDS](https://github.com/rednex/rgbds/releases/tag/v0.3.8) install so that you don't need to install it locally.

To build a local project:

```sh
docker run --rm -v $(pwd):/app forana/rgbds
```

The build artifacts will then be in the project directory.

The default command is `make`. If you need to run something else, you can pass it as an argument.
