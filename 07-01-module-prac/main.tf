module "newtest" {
  source = "./newmodule"
}

variable "fruitnameprice" {}


output "rootmodule-print-statement" {
  value = module.newtest.childmodule
}