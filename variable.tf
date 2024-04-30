variable "subscription_id"{
  type=string
}

variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}
variable "prefix"{
 type=string
 default="edwincruz"
}
variable "account_tier"{
  type=string
  default="Standard"
}
variable "access_tier"{
  type=string
  default="Cool"
}
variable "account_replication_type"{
  type=string
  default="GRS"
}
variable "cross_tenant_replication_enabled"{
 type=bool
 default=false
}

variable "environment"{
 type=string
 default="staging"
}
 variable"company_name"{ 
        type=string
        default="MCIT"
}
variable"years_of_service"{
type=number
default=11
}
variable"ifelsecheck"{
type=bool
default=true
}
output"company_name_output"{
value=var.company_name
}
output"years_of_service_output"{
value=var.years_of_service
}

output"ifelsecheck_output"{
value=var.ifelsecheck
}
variable "summersports"{
  type =list(string)
  default=["soccer","basketball","badminton","tabletennis"]
}
output "summersportslist"{
    value=[for summersport in var.summersports:summersport ]
}
variable "favoritefood"{
  type =list(string)
  default=["pupusas","tacos","pizza","carne asada","ribs"]
}
output "favoritefoodlist"{
    value=[for favoritefood in var.favoritefood:favoritefood ]
}
variable "Resto"{
  type =list(string)
  default=["el rey del taco","Mcdonalds","pizza pizza","mi casa","wendys"]
}
output "Resto"{
    value=[for Resto in var.Resto:Resto ]
}
