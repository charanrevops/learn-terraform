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
  count = length(var.fruits)
}

variable "fruits" {
  default =["apple","banana","orange","apple","banana","orange"]
}