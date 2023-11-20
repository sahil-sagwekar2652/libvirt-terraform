virt-install --name debian --memory 1024 --vcpus 1 --disk=size=10,backing_store=/var/lib/libvirt/images/debian-11-generic-amd64.qcow2 --cloud-init user-data=./cloud-init.yaml,disable=on --osinfo=debian11

