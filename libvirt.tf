# Defining VM Volume
resource "libvirt_volume" "debian-qcow2" {
  name = "debian.qcow2"
  pool = "default" # List storage pools using virsh pool-list
  source = "/var/lib/libvirt/images/debian-11-generic-amd64.qcow2"
  #source = "./CentOS-7-x86_64-GenericCloud.qcow2"
  format = "qcow2"
}

# Define KVM domain to create
resource "libvirt_domain" "debian" {
  name   = "debian"
  memory = "1024"
  vcpu   = 1

  network_interface {
    network_name = "default" # List networks with virsh net-list
  }

  disk {
    volume_id = "${libvirt_volume.debian-qcow2.id}"
  }

#   console {
#     type = "pty"
#     target_type = "serial"
#     target_port = "0"
#   }

#   graphics {
#     type = "spice"
#     listen_type = "address"
#     autoport = true
#   }
}

# Output Server IP
output "ip" {
  value = "${libvirt_domain.debian.network_interface.0.addresses.0}"
}
