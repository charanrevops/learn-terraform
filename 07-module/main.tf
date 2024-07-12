# this is the root module
module "river" {
  source = "./sample-module"
  fruits=var.fruits[count.index]

}

variable "fruits" {}

output "example-test-is-here" {
  value = module.river.sub-example-test
}