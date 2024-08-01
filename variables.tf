variable "resource_group_name" {
  description = "The name of the resource group"
  default     = "miNuevoGrupoDeRecursos"
}

variable "location" {
  description = "The Azure region to deploy the resources"
  default     = "East US"
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  default     = "miClusterAKS"
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  default     = "exampleaks"
}

variable "node_count" {
  description = "The number of nodes in the default node pool"
  default     = 2
}

variable "vm_size" {
  description = "The size of the Virtual Machines"
  default     = "Standard_DS2_v2"
}
