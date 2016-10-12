# ca-certs-scratch

This is a minimal Docker image based off the empty `scratch` Docker image, and
contains only CA certificates at `/etc/ssl/certs/ca-certificates.crt`.

These are CA certificates that allow TLS-based applications to check for the
authenticity of TLS connections.

This is useful, for example, to build a Docker image that runs a minimal Golang
app that uses TLS:

```
FROM quay.io/nitrous/ca-certs-scratch
COPY ./app /app
ENTRYPOINT ["/app"]
```
