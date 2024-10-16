# coralmicro_docker_dev
Docker setup for development on coralmicro board. Used to compile, upload, and interface with the board

## Setup

1. `cd .docker`
2. `docker compose build`


## Usage

After building the docker image you will now have a docker image with all the necessary tools to compile, upload to the board.

When used the container's working directory will mount to the `coralmicro_shared` directory. This directory is shared between the host and the container.

### Build An Application

`docker compose run coral_micro_build`

### Upload A Built Application

You'll need to open the docker-compose.yml file and change app name in the line "command: "python3 scripts/flashtool.py --app your_apps_name" under the coral_micro_upload service.

`docker compose run coral_micro_upload`