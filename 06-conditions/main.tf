#01-program
variable "marks" {
  default = 50
}

output "grade" {
  value = var.marks >=80 ? "Distinction" : "2nd-class"
}

syntax: condition ? true_statement : false_statement


#02-program
variable "marks" {
  type=list(string)
  default = ["apple","banana"]
}

output "grade" {
  value = try(var.marks[0] == "banana",null)  ? "You have guessed it " : "No you are wrong"
}

