variable "countries_to_visit" {
type=string
}

output"countries_to_visi"{
value=var.countries_to_visit
}

variable "countries_to_visit"{
  type =list(string)
  default=["italy","colombia","mexico","egipt","argentina"]
}
