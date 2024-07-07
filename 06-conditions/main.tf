#01-program
variable "rank" {
  default = 50
}

output "ranker" {
  value = var.rank >=80 ? "Distinction" : "2nd-class"
}

#syntax: condition ? true_statement : false_statement


#02-program
variable "marks" {
  type=list(string)
  default = []
}

output "grade" {
  value = try(var.marks[100],null) == null ? "You did not guess the fruit name" : "you guessed the fruit name ${var.marks[00]}"
}

#"apple","banana"
#"apple","banana",""