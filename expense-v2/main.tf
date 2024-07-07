resource "aws_instance" "ec2-severnames" {
  count         =  length(var.servernames)
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-076b871708f2b2227"]

  tags = {
    Name = var.servernames[count.index]
  }
}

variable "servernames" {
  default = ["frontendserver", "backendserver", "mysqlserver"]
}