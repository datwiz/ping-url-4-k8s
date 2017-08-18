# URL ping service

## Purpose
Service to generate synthetic http traffic within a Kubernetes environment.

The Dockerfile builds an image that issues a curl request with a specified frequency.

There are two arguments for running the image, passed as environment variables:
* TRGT_URL:  the url to use for the GET request
* INTERVAL:  the request frequency interval in seconds

## Example Kubernetes Deployments
The ./deployments folder contains 2 example kubernetes deployments:
* ping-dialtone-200.yml pings a URL with a path that generates '200' request responses
* ping-dialtone-404.yml pings a URL with a path that generates '404' request responses
