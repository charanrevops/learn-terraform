resource "null_resource" "example" {
  count=length(var.fruits)

}

variable  "fruits" {}