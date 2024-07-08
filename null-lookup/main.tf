resource "null_resource" "ec2-servernames" {
  #count         =  length(var.servernames)
  for_each      = var.servernames
  # ami           = "ami-041e2ea9402c46c32"
  # instance_type = try(each.value["instance_type"], null) == null? "t3.small" : each.value["instance_type"]
  # instance_type = lookup(var.servernames[each.key],"instance_type","t3.small")
  # instance_type = lookup(each.value,"instance_type","t3.small")
  # vpc_security_group_ids = ["sg-076b871708f2b2227"]

#   tags = {
#     Name = each.key
#   }
}

variable "servernames" {
  type    = list(object({
    name  = string
    id    = string
  }))


  default = [
    {
      name  = "frontendserver"
      id    =  "t2.micro"
      },
    {
      name  = "backendserver"
      id    =  "t3.micro"
    }

  ]

}



output "names-ids" {
  value = [for i in null_resource.ec2-servernames : "the given servername is ${var.servernames}"]
}


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

