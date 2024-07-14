resource "aws_instance" "ec2-servernames" {

  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids =var.vpc_security_group_ids
  tags = {
    Name = var.name
  }
}


#DNS records

resource "aws_route53_record" "exrecord" {
  zone_id = var.zone_id
  name    = "${var.name}-dev.charanrdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2-servernames.private_ip]
}