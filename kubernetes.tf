locals{ 
  cluster_names=["k10abc","k10abc1","k11abc2","k12abc3","k13abc4"]
}
resource "myfirsterra_resource_group" "myfirsterragroup" {
  name     = "myfirstterraform_resource_group"
  location = "Canada Central"
}
