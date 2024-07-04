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
  value = var.a[0]
}