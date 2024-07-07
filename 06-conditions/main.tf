variable "marks" {
  default = 50
}

output "grade" {
  value = var.marks >=80 ? "Distinction" : "2nd-class"
}

# syntax: condition ? true_statement : false_statement