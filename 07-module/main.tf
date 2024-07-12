module "sample" {
  source = "./sample-module"
  fruits=var.fruits

}

variable "fruits" {
  #default =["apple", "banana","orange","pineapple"]
  default = {
    apple = {}
    banana = {}
    orange = {}
  }

}