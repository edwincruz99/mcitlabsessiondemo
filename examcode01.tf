variable "exam_list" {
  default = ["azure", "aws","gcp"], add  ["alibaba","ibm"]
}
output "exam_q13" {
  value = join(" ", var.exam_list)
}


