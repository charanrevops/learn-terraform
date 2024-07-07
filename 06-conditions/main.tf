#02-program
variable "marks" {
  default = 50
}

output "grade" {
  value = var.marks >=80 ? "Distinction" : "2nd-class"
}

# syntax: condition ? true_statement : false_statement


#02-program
variable"names" {
  description = "A sample list of names"
  type        = list(string)
  default     = ["apple"]
}


output "the-given-name-of-fruits-is----" {
  value = var.names=="apple"")?"you have guessed it":"you are wrong"]
}
