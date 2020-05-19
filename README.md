# terminus

Dockerfile for running [Terminus](https://pantheon.io/docs/terminus/)

## Usage

`docker run --rm -it --volume ~/.terminus:/tmp/.terminus --entrypoint terminus oscarmrom/terminus [args...]`

The above will mount a local folder to store terminus cache info, such as auth credentials.

### Terminus Version 2.3.0

### Using Docker Image Locally

[Link to Tutorial Site](https://useless.today/pantheon-terminus-docker/)

Here we’re mounting `${HOME}/.terminus:/tmp/.terminus` so that we can cache our auth token so we can access our remote sites. You could set this up as a bash function and just call it via terminus with the following:

```bash
terminus(){
  docker run -it --rm --volume ${HOME}/.terminus:/tmp/.terminus --entrypoint=terminus oscarmrom/terminus "${@}"
}
```

The function above sets `--entrypoint=terminus` so you can use it more naturally, this essentially tells docker to behave like an executable and accept arguments to pass to that executable.

Now you can use it as if it were installed locally: `terminus --version`, `terminus auth:login --machine-token=<your token>`, `terminus site:list`.
