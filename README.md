
## Set SELinux context to the directory of the host to be mounted on the container.

```sh
chcon -Rt container_file_t .
ls -lZ
```

## Start a Pod defined in yaml

```sh
podman kube play pod.yml --build
```

## Display logs for Pod

```sh
podman pod logs php-test-pod
```

## Display logs for containers

```sh
podman logs php-test-pod-app
```

## Enter the container

```sh
podman exec -it php-test-pod-app sh
```

## Stop a Pod
```sh
podman kube down pod.yml
```
