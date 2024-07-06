# resource "aws_instance" "ec2-servernames" {
#   count                   = 3
#   ami                     = "ami-041e2ea9402c46c32"
#   instance_type           = "t3.small"
#   vpc_security_group_ids  = ["sg-076b871708f2b2227"]
#
#   tags = {
#     Name = "frontendtag"
#   }
# }
#
# variables "severnames"  {
#   default = ["frontend","backend","mysql"]
#
# }


resource "null_resource" "test_exam" {
  count = length(var.fruitnames)
}

variable "fruitnames" {
  default =["apple","banana","orange","pine","gau","sap"]
}

variable "exam" {
    default = "y"
  }


output "the-value-of-y-is----" {
  value = [for item in var.fruitnames :var.exam]
}



variable"names"{
  description="A sample list of names"
  type=list(string)
  default = ["apple","mango","orange"]
}

output "the-uppercase-of-fruits-is----" {
  value = [for item in var.names :upper(name)]
}