variable "exam_list" {
  default = ["azure", "aws","gcp"] 
}
output "exam_q13" {
  value = join(" ", var.exam_list)
}
variable "exam1_list" {
  type    = list(list(string))
  default = [[1,2,3],[1,2],[1,2,3,4],[1,2,3,4,5]]
}
output "flattened_list_result" {
  value = local.flattened_list
}
flattened_list = flatten(var.exam1_list)

output "flattened_list_result" {
  value = local.flattened_list
}

