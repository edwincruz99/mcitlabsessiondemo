variable "exam_list" {
  default = ["azure", "aws","gcp"]
}
output "exam_q13" {
  value = join(" ", var.exam_list)
}
locals {
  contains_keyword1 = contains(split(" ", var.exam_list), "azure")
}
output "string_contains_no_sample1" {
  value = local.contains_keyword1 ? "String contains 'azure'" : "String does not contain 'azure'"
}
