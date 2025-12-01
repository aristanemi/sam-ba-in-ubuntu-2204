# About
Docker container recipe to run sam-ba inside container.

# Dockerfile
- Installed supported libraries
- Added sam-ba tool to image.

# Testing
Clone repository and run to test if sam-ba can load applet to board via /dev/ttyACM0 port
```sh
docker compose up --build
```

Run following to get tty interactive terminal with container.
```sh
docker compose run --rm --remove-orphans --entrypoint bash gcuflashing
```