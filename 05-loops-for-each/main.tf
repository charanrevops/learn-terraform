variable "fruits" {
  default = {
    apple ={}
    banana= {}
    orange= {}

  }
}

resource "null_resource" "test" {
  for_each = var.fruits
}