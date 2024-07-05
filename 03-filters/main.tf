variable "fruits" {}


output "apple_details_is" {
  value = "apples quanity - ${var.fruits["apple"]["quantity"]},Price is ${var.fruits["apple"]["price"][1]}"
}

output "banana_details_is" {
  value = "banana quanity is ${lookup(var.fruits["banana"],"quantity",100)},Price is ${lookup(var.fruits.banana,"price",0.2)}"
}


variable "a" {
  default = [12, 54, 3, 33, 54 ,66]
}

locals {
  mx=max(var.a)
}

output "maximum_is" {
  value = local.mx
}
