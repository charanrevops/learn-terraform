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
    apple = {
      name1 = "apple"
    }
    banana = {
      name1 = "banana"
    }
    orange = {
      name1 = "orange"
    }
    ananas = {
      name1 = "ananas"
    }
  }
}

resource "null_resource" "fruits" {
  #for_each = toset(var.fruitnames)
  for_each = var.fruits
  name1    = each.value["name1"]

  tags = {
    Name=each.key
  }

  triggers = {
    dername = each.value["fruitnames"]
  }
}



output "fruit_names_output" {
  value = [for i in null_resource.fruits : "the given fruit names is ${i.triggers.dername}"]
}
