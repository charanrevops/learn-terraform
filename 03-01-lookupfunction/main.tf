variable "fruits1" {
  default ={
    name1 ="apple"
    name2=20
    name3=30
  }
}


variable "fruits" {

    type = string


}
output "the-fruit-name-is" {
  #value = lookup(var.fruits["name4"],"please say correct name")
  value = lookup(var.fruits1,"${var.fruits}","please say correct name")
}