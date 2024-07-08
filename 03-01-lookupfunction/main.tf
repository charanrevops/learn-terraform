variable "fruits" {
  default ={
    name1 =10
    name2=20
    name3=30
  }
}


variable "fruits" {

    type = string


}
output "the-fruit-name-is" {
  #value = lookup(var.fruits["name4"],"please say correct name")
  value = lookup(var.fruits,"${var.fruits}","please say correct name")
}

