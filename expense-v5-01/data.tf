# Zone id
data "aws_route53_zone" "ex-main"{
  name         = "charanrdevops.online"
  private_zone = false
}


output "zone" {
  value = data.aws_route53_zone.ex-main

}

#Data security group


data "aws_security_group" "ex-allow-all" {
  filter {
    name   = "group-name"
    values = ["allow-all"]
  }
}
output "sg-id" {
  value =data.aws_security_group.ex-allow-all
}





# ami

data "aws_ami" "ex-ami" {

  most_recent      = true
  name_regex       = "RHEL-9-DevOps-Practice"
  owners           = ["973714476881"]

}
