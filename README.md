# Helm Chart

Using one Helm Chart template to manage all microservices CRDs.

## Template debug

```shell
helm template . --debug > debug.txt
```

## Dry run

```shell
helm install --debug --dry-run .
```

## Helmfile

```shell
helmfile -e dev template
helmfile -e dev apply
```
