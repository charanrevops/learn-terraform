resource "aws_instance" "ec2-servernames" {

  ami           = "ami-041e2ea9402c46c32"

  instance_type = var.instance_type
  vpc_security_group_ids = ["sg-076b871708f2b2227"]
  tags = {
    Name = var.name
  }
}