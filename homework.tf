variable "travel_list" {
default = ["mexico" , "egypt" , "argentina" , "colombia"]
}
output "join_travel" {
value = join("+", var.travel_list)
}
