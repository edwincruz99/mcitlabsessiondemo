locals{
	servicename = "abracadabra"
	forum = "abracadabramcit"
        firstname = "edwin"
        lastname = "cruz"
        city = "lasalle"
        lengthfn=length(local.firstname)
        lengthlast=length(local.lastname)
        lengthcity=length(local.city)
        landmark1="notre dame basilica"
        landmark2="mount royal park"
        landmark3="old montreal"
        landmark4="olympic stadium"
        landmark5="underground city"
        lengthlnmk1=length(local.landmark1)
        lengthlnmk2=length(local.landmark2)
        lengthlnmk3=length(local.landmark3)
        lengthlnmk4=length(local.landmark4)
        lengthlnmk5=length(local.landmark5)
        total_output=["150","150","150"]
        total_output1=["4","5","1","2","3","9"]
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
output "printlingthcity"{
value = local.lengthcity
}
output "printlandmark1"{
value = local.landmark1
}
output "printlandmark2"{
value = local.landmark2
}
output "printlandmark3"{
value = local.landmark3
}
output "printlandmark4"{
value = local.landmark4
}
output "printlandmark5"{
value = local.landmark5
}
output "printlengthlnmk1"{
value = local.lengthlnmk1
}
output "printlengthlnmk2"{
value = local.lengthlnmk2
}
output "printlengthlnmk3"{
value = local.lengthlnmk3
}
output "printlengthlnmk4"{
value = local.lengthlnmk4
}
output "printlengthlnmk5"{
value = local.lengthlnmk5
}
output "sumoofthreenumbers"{
value=sum([for numberoutput in local.total_output:tonumber(numberoutput)])
}
output"sumofsixnumers"{
value=sum([for numberoutput in local.total_output:tonumber(numberoutput)])
}
