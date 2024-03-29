# Libvirt Terraform

Because you can't be using VirtualBox on Linux in 2024.

- Read through the `cloud-init.yaml`
- The default username and sudo password is 'sahil'.
- You can generate the hashed password using the following command -
  ```bash
   echo -n 'password' | openssl passwd -6 -stdin
  ```
  Replace `'password'` with your desired password.
- The output will give an error after `terraform apply`, possibly because the VM isn't completely setup yet, however running `terraform output` again should print the IP address of the VM.

![](https://octetz.s3.us-east-2.amazonaws.com/running-a-minimal-hypervisor/kvm-stack.png)

### Resources -
- https://mprivozn.fedorapeople.org/presentations/OSSConf2012/virtualization.pdf
- https://mop.koeln/blog/creating-a-local-debian-vm-using-cloud-init-and-libvirt/
- https://computingforgeeks.com/how-to-provision-vms-on-kvm-with-terraform/
- https://docs.huihoo.com/redhat/rhel6/en-US/html/Virtualization/index.html
- https://registry.terraform.io/providers/dmacvicar/libvirt/latest/docs/resources/volume
- https://octetz.com/c/linux-hypervisor-setup/

#### [Link to my talk](https://sovran.video/w/6Nkc3HsjnmTmas8pyxdrDu?start=33m31s)
#### [Link to the presentation](https://drive.google.com/file/d/1RhOAzH33IeUe-gG7i6fKyWHydJT8LmkR/view)
