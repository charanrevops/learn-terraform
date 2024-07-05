variable "fruits" {}


output "apple_details_is" {
  value = "apples quanity - ${var.fruits["quantity"]},Price is ${var.fruits["price"]}"
}