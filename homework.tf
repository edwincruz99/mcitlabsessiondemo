variable "counttries_to_visit" {
type=string
}

variable "countries_to_visit"{
  type =list(string)
  default=["italy","colombia","mexico","egipt","argentina"]
}
