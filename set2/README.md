# Example `docker-compose` setup that routes to separate hosts while exposing one port

This example runs 4 different docker containers:

 * a `traefik` reverse proxy
 * 3 `caddy` instances (simple/modern web server with minimal config)

The 3 applications are completely isolated from the outside network, and are neither
accessible nor can access the WAN.

The HTTP routing (and eventual SSL termination) is up to traefik or your reverse
proxy of choice.

## Running it

Careful: this CLI script will use sudo rights, please audit it before running it!

```sh
./run.sh
```

