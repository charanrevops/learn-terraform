module "river" {
  source = "./sample-module"
  fruits=var.fruits

}

variable "fruits" {}

output "examplpe-test-is-here" {
  value = module.river.example-test
}