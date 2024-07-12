# this is the child module
resource "null_resource" "example" {
  #count=length(var.fruits)
  for_each = [for v in var.fruits: var.fruits]
}

variable  "fruits" {}

output "sub-example-test" {
  value = "Hello World here is new six"
}