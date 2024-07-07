# 01-program
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


# 02-program
variable "fruitnames" {
  #type    = list(string)
  default = {
    apple = "apple"
    banana= "banana"
    orange= "orange"
    ananas= "ananas"
  }
}

resource "null_resource" "fruits" {
  #for_each = toset(var.fruitnames)
  for_each = var.fruits

  triggers = {
    dername = each.value["fruitsnames"]
  }
}



output "fruit_names_output" {
  value = [for i in null_resource.fruits : "the given fruit names is ${i.triggers.dername}"]
}
