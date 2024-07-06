
#0-user program

# variable"names"{
#   description="A sample list of names"
#   type=list(string)
#   default = ["apple","mango","orange","pinacolada"]
# }
#
# output "the-uppercase-of-fruits-is----" {
#   value = [for item in var.names:upper(item)]
# }


#1-user program
variable"names" {
  description = "A sample list of names"
  type        = list(string)
  default     = ["apple", "banana", "orange", "pinacolada"]
}


output "the-given-name-of-fruits-is----" {
  value = [for item in var.names:"the given fruit names is ${var.names[0]}"]
}

#2-user program
#provider "null" {}

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



output "user_names_output" {
  value = [for i in null_resource.fruits : "the given fruit names is ${i.triggers.dername}"]
}


provider "null" {}

variable "user_names" {
  type    = list(string)
  default = ["user1", "user2", "user3"]
}

resource "null_resource" "users" {
  for_each = toset(var.user_names)

  triggers = {
    name = each.value
  }
}

output "user_names_output" {
  value = [for user in null_resource.users : user.triggers.name]
}