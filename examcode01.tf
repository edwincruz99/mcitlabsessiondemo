variable "exam_list" {
  default = ["azure", "aws","gcp"] 
}
output "exam_q13" {
  value = join(" ", var.exam_list)
}
variable "lis_exam1" {
  type    = list(list(string))
  default = [[1,2,3],[1,2],[1,2,3,4],[1,2,3,4,5]]
}
flatten=(var.list_exam1)


