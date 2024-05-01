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
