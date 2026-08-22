terraform {
  source = "./harvester"
}

inputs = {
  harvester_kubeconfig_path = "kubeconfig"
  # Inputs for harvester_vm_network module
  cluster_network_name  = "dev-net"
  network_name          = "dev-net"
  network_namespace     = "devops"
  network_route_mode    = "manual"
  network_vlan_id       = "100"
  network_route_gateway = "192.168.1.1"
  network_route_cidr    = "192.168.1.1/24"
  # Inputs for harvester_vm_image module
  image_name         = "almalinux-10.2"
  image_namespace    = "harvester-public"
  image_display_name = "AlmaLinux 10.2"
  image_source_type  = "download"
  image_url          = "https://repo.almalinux.org/almalinux/10.2/cloud/x86_64/images/AlmaLinux-10-GenericCloud-10.2-20260526.0.x86_64.qcow2"
  image_tags         = { "os" = "example-os" }

  # Inputs for harvester_vm module
  vm_name        = "example-vm"
  vm_hostname    = "example-vm"
  vm_namespace   = "default"
  vm_description = "Example VM"
  vm_tags        = { "purpose" = "example" }
  vm_cpus        = 2
  vm_memory      = "2Gi"
  vm_disks = [
    {
      name       = "rootdisk"
      size       = "20Gi"
      boot_order = 1
    }
  ]
}
