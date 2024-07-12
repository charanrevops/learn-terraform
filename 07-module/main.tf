module "sample" {
  source = "./sample-module"
  fruits=var.fruits

}

variable "fruits" {
  default =["apple", "banana","orange","pineapple"]

}

output "examplpe-test" {
  value = module.sample.example-test
}