# this is the child module
resource "null_resource" "example" {
  #count=length(var.fruits)
  for_each = var.fruits
}

variable  "fruits" {}

output "sub-example-test" {
  value = "Hello world here is new six"
}