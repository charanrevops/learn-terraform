data "aws_route53_zone" "ex-main"{
  name         = "charanrdevops.online"
  private_zone = false
}


output "zone" {
  value = data.aws_route53_zone.ex-main

}