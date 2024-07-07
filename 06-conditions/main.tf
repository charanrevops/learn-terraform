variable "marks" {
  default = 50
}

output "grade" {
  value = var.marks >80 ? "Distinction" : "2nd-class"
}