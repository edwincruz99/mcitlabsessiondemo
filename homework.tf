variable "string_list3" {
  default = ["Egip", "Italy","Colombia","Argentina","New Zeland"]
}

variable "countries_to_visit" {
    type=string
    default= "Egip+Italy+Colombia+Argentina+New Zeland"
}

output "string_list3_output"{
    value=var.string-list3
}

