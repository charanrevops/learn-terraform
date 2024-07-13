module "newtest" {
  source = "./newmodule"
  fruitnameprice = var.fruitnameprice
}

variable "fruitnameprice" {}


output "rootmodule-print-statement" {
  value = module.newtest.childmodule
}