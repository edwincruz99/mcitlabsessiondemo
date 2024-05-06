variable "exam_list" {
  default = ["azure", "aws","gcp"]
}
output "exam_q13" {
  value = join(" ", var.exam_list)
}
> contains(["a", "b", "c"], "a")
true
> contains(["a", "b", "c"], "d")
false


