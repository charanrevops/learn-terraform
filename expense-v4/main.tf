resource "aws_instance" "ec2-severnames" {
  #count         =  length(var.servernames)
  for_each      = var.servernames
  ami           = "ami-041e2ea9402c46c32"
 # instance_type = try(each.value["instance_type"], null) == null? "t3.small" : each.value["instance_type"]
  instance_type = lookup(var.servernames,"instance_type","t3.small")

  vpc_security_group_ids = ["sg-076b871708f2b2227"]

  tags = {
    Name = each.key
  }
}

variable "servernames" {
  default = {
    frontendserver = {

    }
    backendserver = {

    }
    mysqlserver = {
      instance_type = "t2.micro"
    }
  }
}

