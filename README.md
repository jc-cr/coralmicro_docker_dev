# coralmicro_docker_dev
Docker setup for development on coralmicro board. Used to compile, upload, and interface with the board

## Setup
1. `cd .docker`
2. `docker compose build`

You will now have a docker image with all the necessary tools to compile, upload, and interface with the coralmicro board.
When used the container's working directory will mount to the `coralmicro_shared` directory. This directory is shared between the host and the container.

## Usage
The following services are available in the container:

Compile and upload: `docker compose up compile_upload`
