resource "aws_instance" "frontendserverexm" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"

  tags = {
    Name = "frontendtag"
  }
}

resource "aws_instance" "backendserverexm" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"

  tags = {
    Name = "backendtag"
  }
}

resource "aws_instance" "mysqlexm" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"

  tags = {
    Name = "mysql"
  }
}