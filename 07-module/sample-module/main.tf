resource "null_resource" "example" {
  count=length(var.fruits)
  #for_each = var.fruits
}

variable  "fruits" {}

output "example-test" {
  value = "Hello World"
}