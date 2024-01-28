# Libvirt Terraform

Because you can't be using VirtualBox on Linux in 2024.

- Read through the `cloud-init.yaml`
- The output will give an error after `terraform apply`, possibly because the VM isn't completely setup yet, however running `terraform output` again should print the IP address of the VM.

### Resources
- https://mprivozn.fedorapeople.org/presentations/OSSConf2012/virtualization.pdf
- https://mop.koeln/blog/creating-a-local-debian-vm-using-cloud-init-and-libvirt/
- https://computingforgeeks.com/how-to-provision-vms-on-kvm-with-terraform/
- https://docs.huihoo.com/redhat/rhel6/en-US/html/Virtualization/index.html
- https://registry.terraform.io/providers/dmacvicar/libvirt/latest/docs/resources/volume
- https://octetz.com/c/linux-hypervisor-setup/

##### [Link to my talk](https://sovran.video/w/6Nkc3HsjnmTmas8pyxdrDu?start=33m31s)
##### [Link to the presentation](https://drive.google.com/file/d/1RhOAzH33IeUe-gG7i6fKyWHydJT8LmkR/view)
