# #01-program
# variable "marks" {
#   default = 50
# }
#
# output "grade" {
#   value = var.marks >=80 ? "Distinction" : "2nd-class"
# }

# syntax: condition ? true_statement : false_statement


#02-program
variable "marks" {
  default = 50
}

output "grade" {
  value = var.marks >=80 ? "You have guess it " : "No you are wrong"
}

