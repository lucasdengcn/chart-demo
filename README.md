# Helm Chart

Using one Helm Chart template to manage all microservices CRDs.

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
