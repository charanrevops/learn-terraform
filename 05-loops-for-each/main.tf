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

variable "fruitnames" {
  type    = list(string)
  default = ["apple", "banana", "orange", "ananas"]
}

resource "null_resource" "fruits" {
  for_each = toset(var.fruitnames)

  triggers = {
    dername = each.value
  }
}



output "fruit_names_output" {
  value = [for i in null_resource.fruits : "the given fruit names is ${i.triggers.dername}"]
}
