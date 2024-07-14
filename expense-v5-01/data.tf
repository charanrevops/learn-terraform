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
output "sd-id" {
  value =data.aws_security_group.ex-allow-all
}