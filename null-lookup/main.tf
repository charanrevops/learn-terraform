resource "null_resource" "ec2-severnames" {
  #count         =  length(var.servernames)
  #for_each      = toset(var.servernames)
#  triggers = {
#     names = each.value
#   }

  provisioner "local-exec" {
    command = "echo This specific command will execute only once during apply"
  }

}

variable "servernames" {
  type = list(object({
    name= string
    id= string
  }))
  default = [
    {
      name = "frontendserver"
      id  = ""
    },
    {
      name = "backendserver"
      id  = ""
    },
    {
      name = "mysqlserver"
      id = "t2.micro"
    }

  ]
}


output "example" {
  value = [for i in null_resource.ec2-severnames: "this is example"]
}

# instance_type = try(each.value["instance_type"], null) == null? "t3.small" : each.value["instance_type"]
# instance_type = lookup(var.servernames[each.key],"instance_type","t3.small")
# instance_type = lookup(each.value,"instance_type","t3.small")





# 02-program
variable "fruitnames" {
  type    = list(string)
  default = ["apple", "banana", "orange", "ananas"]
}

resource "null_resource" "fruits" {
  for_each = toset(var.fruitnames)

  triggers = {
    dername = each.value
  }
}



output "fruit_names_output" {
  value = [for i in null_resource.fruits : "the given fruit names is ${i.triggers.dername}"]
}

