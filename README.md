# Helm Chart

Using one Helm Chart template to manage all microservices CRDs.

## Prerequisites

- Helm
- Helmfile

## Features

- One Helm Chart template to manage all microservices CRDs.
- Helmfile to manage multiple environments (dev, staging, prod) for each microservice.
- Helmfile to manage multiple microservices for each environment.
- Supporting Regional-Specific deployment model

## Template debug

```shell
helmfile -e dev template > debug.yaml
```

## Dry run

```shell
helmfile -e dev template > dry-run-dev.yaml
```

## Apply

```shell
helmfile -e dev apply
```
