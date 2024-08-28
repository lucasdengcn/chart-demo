# Helm Chart

Using one Helm Chart template to manage all microservices CRDs.

## Template debug

```shell
helm template demo . --debug > debug.txt
```

## Dry run

```shell
helm install --debug --dry-run demo .
```
