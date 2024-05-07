locals{ 
  cluster_names=["k10abc","k10abc1","k11abc2","k12abc3","k13abc4"]
}
resource "azurerm_resource_group" "myazureresourcegroup" {
  name     = "My_first_terra_Group"
  location = "Canada Central"
}
