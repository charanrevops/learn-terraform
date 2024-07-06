# variable"names"{
#   description="A sample list of names"
#   type=list(string)
#   default = ["apple","mango","orange","pinacolada"]
# }
#
# output "the-uppercase-of-fruits-is----" {
#   value = [for item in var.names:upper(item)]
# }

variable"names" {
  description = "A sample list of names"
  type        = list(string)
  default     = ["apple", "banana", "orange", "pinacolada"]
}


output "the-given-name-of-fruits-is----" {
  value = [for item in var.names:"the given fruit names is ${var.names[0]}"]
}


#provider "null" {}

variable "fruit_names" {
  type    = list(string)
  default = ["apple", "banana", "orange"]
}

resource "null_resource" "users" {
  for_each = toset(var.fruit_names)

  triggers = {
    dername = each.value
  }
}

output "user_names_output" {
  value = [for user in null_resource.users : "the given fruit names is ${user.triggers.dername}"]
}