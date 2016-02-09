# docker-tinyproxy

A Dockerfile that produces a container that will run [Tinyproxy][tinyproxy].

[tinyproxy]: https://banu.com/tinyproxy/

*Caution.  This configures Tinyproxy to allow any connection by default.  This may have security implications.*


## Image Creation

```
$ sudo docker build -t "paintedfox/tinyproxy" .
```

## Container Creation / Running

Within the container, Tinyproxy will start listening on port `8888`.  So, if we wish to expose the HTTP proxy service on port `8765` on the host machine, we can run the image like so...

```
$ sudo docker run --name "tinyproxy" -p 8765:8888 -d paintedfox/tinyproxy
```

The `-name="tinyproxy"` names the container as *tinyproxy* so we can easily refer to its name rather than id.
