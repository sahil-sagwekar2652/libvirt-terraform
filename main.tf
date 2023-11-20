terraform {
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
      version = "0.7.6"
    }
  }
}

provider "libvirt" {
  # Configuration options
  alias = "archbox"
  uri = "qemu+ssh://pc/system"
}
