# Set up your workstation for kubernetes

## Create a Docker image for ansible

```shell
  docker build -t ansible .
``` 

## Run your playbooks, e.g.
    
```shell
  INVENTORY=fedora.yaml
  PLAYBOOK=k8s.yaml
  ap() {
    docker run -it --network host -v $HOME/.ssh:/root/.ssh -v $(pwd):/work ansible:latest ansible-playbook "$@"
  }
  ap -i /work/inventory/$INVENTORY /work/$PLAYBOOK
```

