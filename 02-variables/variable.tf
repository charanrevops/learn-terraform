variable "exam" {
  default = "y"
}

output "the-value-of-x-is----" {
  value = var.exam
}

#List variables

variable "a" {
  default=[
  10,"hello",true]
}

output "the_print_of_alist_is" {
  value = var.a
}

#accesing values
output "the_print_of_a_list_vaule_is" {
  value = var.a[2]
}

#Map variable
variable "map" {
  default = {
    course = "DevOps"
    trainer = "john"
  }
}

output "course_name_details" {
  value = var.map["course"]
}