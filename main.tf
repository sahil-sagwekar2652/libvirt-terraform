terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.7.6"
    }
  }
}

provider "libvirt" {
  # Configuration options
  uri = "qemu+ssh://sahil@192.168.1.205/system"
}
