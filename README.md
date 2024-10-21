# coralmicro_docker_dev

Docker setup for in-tree development of the Coral Dev Board Micro.

## Setup

1. In the root directory of this repository, clone the coralmicro repository: `git clone --recurse-submodules -j8 https://github.com/google-coral/coralmicro`
1. `cd .docker`
2. `docker compose build`
3. `docker compose run environment_setup`


## Usage

After doing the setup, you can interact with the board.
via `docker compose run enter_bash`

