variable "original_string2" {
  default = "edwin alexander cruz"
}
output "string_length2" {
  value = length(var.original_string)
}
 
output "uppercase_string2" {
  value = upper(var.original_string2)
}

output "lowercase_string2" {
  value = lower(var.original_string2)
}
 
variable "additional_string2" {
  default = " from Terraform"
}

variable "string_list2" {
  default = ["Edwin", "Alexander","Cruz","Cardoza"]
}

output "join_example2" {
  value = join(" ", var.string_list2)
}

output "reverse_example2" {
  value = join("", reverse(split("", var.original_string2)))
}

variable "numbers" {
default=["1","2","3"]
}

locals {
  contains_keyword = contains(split(" ", var.original_string2), "edwin")
}

