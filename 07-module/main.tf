module "sample" {
  source = "./sample-module"
  fruits=var.fruits

}

variable "fruits" {
  default =["apple", "module"]

}