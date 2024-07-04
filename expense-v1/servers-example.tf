resource "aws_instance" "frontendserverexm" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-076b871708f2b2227"]

  tags = {
    Name = "frontendtag"
  }
}

resource "aws_instance" "backendserverexm" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-076b871708f2b2227"]
  tags = {
    Name = "backendtag"
  }
}

resource "aws_instance" "mysqlexm" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-076b871708f2b2227"]
  tags = {
    Name = "mysql"
  }
}