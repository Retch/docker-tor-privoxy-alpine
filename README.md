# tor-privoxy-alpine - forked from rdsubhas

The smallest (**15 MB**) docker image with Tor and Privoxy on Alpine Linux. Updated to the latest alpine and running as non-root on amd64, arm64 and armhf

## Run

```
docker run -d -p 8118:8118 -p 9050:9050 ghcr.io/retch/docker-tor-privoxy-alpine:latest
curl --proxy localhost:8118 https://google.com
```

## Run with compose

With docker compose, you can easily deploy multiple instances with different ip's at the same time. Just duplicate and rename the proxy entry and change/remote port mappings

```
docker compose up -d
```

## rdsubhas blogpost

And that's it! Read the accompanying [blog post](https://medium.com/@rdsubhas/docker-image-with-tor-privoxy-and-a-process-manager-under-15-mb-c9e344111b61) for more details.
