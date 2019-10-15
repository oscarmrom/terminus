# terminus

Dockerfile for running [Terminus](https://pantheon.io/docs/terminus/)

## Usage

`docker run --rm -it --volume ~/.terminus:/tmp/.terminus --entrypoint terminus oscarmrom/terminus [args...]`

The above will mount a local folder to store terminus cache info, such as auth credentials.

### Terminus Version 2.2.0
