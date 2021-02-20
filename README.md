# Introduction

This is a simple application illustration configuration from load-balancer to nginx-ingress to service.

## Building

```
docker build -f docker/Dockerfile -t hello-python:latest .
```

## Deploying

```
kubectl apply -f kubernetes
```