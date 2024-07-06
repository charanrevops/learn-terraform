# variable"names"{
#   description="A sample list of names"
#   type=list(string)
#   default = ["apple","mango","orange","pinacolada"]
# }
#
# output "the-uppercase-of-fruits-is----" {
#   value = [for item in var.names:upper(item)]
# }

variable"names"{
  description="A sample list of names"
  type=list(string)
  default = ["apple","banana","orange","pinacolada"]
  #count=length(var.names)
}

output "the-given-name-of-fruits-is----" {
  value = [for item in var.names:"the given fruit names is ${var.names[0]}"]
}