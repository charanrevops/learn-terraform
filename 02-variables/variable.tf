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
output "the_print_of_a_list_value_is" {
  value = var.a[2]
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
  value = "$${{var.map.trainer}"#-"$${var.map.course}}"

}

output "course_trainer_name_details" {
  value =    var.map.course[2]
}