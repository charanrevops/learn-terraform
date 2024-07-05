variable "fruits" {}


output "apple_details_is" {
  value = "apples quanity - ${var.fruits["apple"]["quantity"]},Price is ${var.fruits["apple"]["price"][1]}"
}

output "banana_details_is" {
  value = "banana quanity is ${lookup(var.fruits["banana"],"quantity",100)},Price is ${lookup(var.fruits.banana,["price"],0.2)}"
}