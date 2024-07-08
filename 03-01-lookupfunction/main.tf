variable "fruits" {
  default = {
    name1="apple"
    name2="banana"
    name3="orange"
  }
}

output "the-fruit-name-is" {
  #value = lookup(var.fruits["name4"],"please say correct name")
  value = lookup(var.fruits,"name6","please say correct name")
}

