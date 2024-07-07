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
  value = try(var.marks[3] == "banana",null)  ? "You have guessed it TRUE${var.marks[0]}" : "No you are wrong FALSE${var.marks[1]}"
}

#"apple","banana"