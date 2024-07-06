variable"names"{
  description="A sample list of names"
  type=list(string)
  default = ["apple","mango","orange","pinacolada"]
}

output "the-uppercase-of-fruits-is----" {
  value = [for item in var.names:upper(item)]
}