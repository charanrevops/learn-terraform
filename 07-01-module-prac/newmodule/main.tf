resource "null_resource" "fruitcalled" {
  for_each = var.fruitnameprice
}

variable "fruitnameprice" {}


output "childmodule" {
  value = "Hello World here is one"
}