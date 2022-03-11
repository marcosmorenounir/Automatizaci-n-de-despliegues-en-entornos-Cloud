variable "entornos" {
  type = list(string)
  description = "Entornos"
  default = ["dev", "pre"]
}


variable "location" {
  type = string
  description = "Región de Azure donde crearemos la infraestructura"
  default = "West Europe"
}

variable "vm_size" {
  type = string
  description = "Tamaño de la máquina virtual"
  default = "Standard_D1_v2" # 3.5 GB, 1 CPU 
}

variable "vms" {
  type = list(string)
  description = "Máquinas virtuales a crear"
  default = ["kubemaster", "kubenode1","kubenode2","nfs"]
}