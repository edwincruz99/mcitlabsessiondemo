variable "original_string" {
  default = "edwin alexander cruz"
}
output "string_length" {
  value = length(var.original_string)
}
