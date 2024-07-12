# this is the child module
resource "null_resource" "example" {
  #count=length(var.fruits)
  for_each = var.fruits[0]
}

variable  "fruits" {}

output "sub-example-test" {
  value = "Hello World here is new five"
}