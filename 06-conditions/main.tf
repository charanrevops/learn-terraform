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
  default = ["apple","banana",""]
}

output "grade" {
  value = try(var.marks[2] == "banana",null) == null ? "You did not guess the fruit name" : "you guessed the fruit name ${var.marks[2]}"
}

#"apple","banana"