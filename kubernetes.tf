locals{ 
  cluster_names=["k10abc","k10abc1","k11abc2","k12abc3","k13abc4"]
}
resource "azurerm_resource_group" "myazureresourcegroup" {
  name     = "My_first_terra_Group"
  location = "Canada Central"
}
resource "azurerm_resource_group" "mylazureresourcegroup" {
  name     = "My_first_terra_Group2"
  location = "Canada east"
}
resource "azurerm_kubernetes_cluster" "batchabcd" {
  for_each            = {for cluster in local.cluster_names: cluster=>cluster}
  name                = "${var.prefix}cluster"
  location            = azurerm_resource_group.azureresourcegroup.location
  resource_group_name = azurerm_resource_group.azureresourcegroup.name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}
output "client_certificate" {
  value     = [for cluster in azurerm_kubernetes_cluster.batchabcd:cluster.kube_config.0.client_certificate]
  sensitive = true
}

output "kube_config" {
  value = [for cluster in azurerm_kubernetes_cluster.batchabcd: cluster.kube_config_raw]

  sensitive = true
}
output "kube_id"{
  value=[for cluster in azurerm_kubernetes_cluster.batchabcd:cluster.id ]
}
output "kube_name"{
  value=[for cluster in azurerm_kubernetes_cluster.batchabcd:cluster.name ]
}

