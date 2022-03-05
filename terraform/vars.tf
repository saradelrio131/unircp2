#Variable definition
variable "vm_size" {
  type = string
  description = "VM size"
  default = "Standard_A2_v2" # 4 GB, 2 CPU 
}

#https://docs.microsoft.com/es-es/azure/cloud-services/cloud-services-sizes-specs