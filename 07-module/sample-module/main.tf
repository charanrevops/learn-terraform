resource "null_resource" "example" {
  #count=length(var.fruits)
  for_each = var.fruits[count.index]
}

variable  "fruits" {}