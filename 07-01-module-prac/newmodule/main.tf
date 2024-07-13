resource "null_resource" "fruitcalled" {
  #for_each = var.fruitnameprice
  count=length(var.fruitnameprice)

}

variable "fruitnameprice" {}


output "childmodule" {
  value = [for item in var.fruitnameprice :var.fruitnameprice]
}




# # this is the child module
# resource "null_resource" "example" {
#   #count=length(var.fruits)
#   for_each = var.fruits
# }
#
# variable  "fruits" {}
#
# output "sub-example-test" {
#   value = "Hello world here is new six"
# }