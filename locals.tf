locals{
	servicename = "abracadabra"
	forum = "abracadabramcit"
        firstname = "edwin"
        lastname = "cruz"
        city = "lasalle"
        lengthfn=length(local.firstname)
        lengthlast=length(local.lastname)
        lengthcit=length(local.city)
}
output "print"{
value = local.servicename
}
 output "secondprint" {
	value = local.forum
}
output "printfirstname"{
value = local.firstname
}
output "printlastname"{
value = local.lastname
}
output "printcity"{
value = local.city
}
output "printlengthfn"{
value = local.lengthfn
}
output "printlengthlast"{
value = local.lengthlast
}
output "printlingthcit"{
value = local.lengthcit
}
