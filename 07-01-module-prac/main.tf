module "newtest" {
  source = "./newmodule"
  fruitnameprice = var.fruitnameprice
}

variable "fruitnameprice" {}


output "rootmodule-print-statement" {
  value = module.newtest.childmodule
}



# # this is the root module
# module "river" {
#   source = "./sample-module"
#   fruits=var.fruits
#
# }
#
# variable "fruits" {}
#
# output "example-test-is-here" {
#   value = module.river.sub-example-test
# }