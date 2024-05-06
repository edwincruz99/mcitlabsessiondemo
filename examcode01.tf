variable "exam_list" {
  default = ["azure", "aws","gcp"]
}
output "join_example" {
  value = join(" ", var.exam_list)
}
