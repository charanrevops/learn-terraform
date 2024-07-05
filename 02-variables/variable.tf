variable "exam" {
  default = "y"
}

output "the-value-of-x-is----" {
  value = var.exam
}

variable "a" {

}

output "the-value-of-a-is-" {
  value = var.a
}

#List variables

variable "ab" {
  default=[
  10,"hello",true]
}

output "the_print_of_alist_is" {
  value = var.ab
}

#accesing values
output "the_print_of_a_list_value_is" {
  value = var.ab[2]
}

#Map variable
variable "map" {
  default = {
    course = ["DevOps","python","java"]
    trainer = ["surya","ram","shiva"]
  }
}

output "course_and_trainer_name_details" {
  #value = "${var.map.course[0]}and${var.map.trainer[0]}"
  value = "${var.map.course[0]} is taught by ${var.map.trainer[0]}}"
}

output "trainer_name_details" {
  value = "${var.map.trainer[1]}-${var.map.course[2]}"

}

output "course_trainer_name_details" {
  value =    var.map.course[2]
}

variable "y"{}
output "y_print_is" {
  value = var.y
}

variable "env"{}

output "env_output_print_is" {
  value = var.env
}

