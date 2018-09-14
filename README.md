# rgbds-docker

Super-minimal dockerfile for an Ubuntu-based (18.04) dev environment with [rgbds](https://github.com/rednex/rgbds) preinstalled.

To use with your own project, run like so in your terminal:

```sh
docker run -it --rm -v $(pwd):/app forana/rgbds:latest
```

If you'd like to bring in your own `.bashrc` (or similar):

```sh
docker run -it --rm -v $(pwd):/app -v ~/.bashrc:/root/.bashrc forana/rgbds:latest
```

Check out the list of available tags at [https://hub.docker.com/r/forana/rgbds/tags/](https://hub.docker.com/r/forana/rgbds/tags/).
