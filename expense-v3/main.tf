resource "aws_instance" "ec2-severnames" {
  #count         =  length(var.servernames)
  for_each      = var.servernames
  ami           = "ami-041e2ea9402c46c32"
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = ["sg-076b871708f2b2227"]

  tags = {
    Name = each.key
  }
}

variable "servernames" {
  default = {
    frontendserver = {
      instance_type = "t3.small"
    }
    backendserver = {
      instance_type = "t3.micro"
    }
    mysqlserver = {
      instance_type = "t2.micro"
    }
  }
}

