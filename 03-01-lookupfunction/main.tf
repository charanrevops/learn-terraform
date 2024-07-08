variable "fruits" {
  default = {
    name1="apple"
    name2="banana"
    name3="orange"
  }
}

output "the-fruit-name-is" {
  value = var.fruits[name1]
}