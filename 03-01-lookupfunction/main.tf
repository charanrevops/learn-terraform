variable "fruits" {
  default = {
    name1="apple"
    name2="banana"
    name3="orange"
  }
}


variable "fruits" {
  default = {
    name=string

  }
}
output "the-fruit-name-is" {
  #value = lookup(var.fruits["name4"],"please say correct name")
  value = lookup(var.fruits,name,"please say correct name")
}

