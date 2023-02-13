resource "aws_route53_record" "www" {
  zone_id = "Z0405036A3AZF8G0ONQV"
  name    = "${var.COMPONENT}-dev.roboshop.internal"
  type    = "A"
  ttl     = 300
  records = [aws_spot_instance_request.my_spot_server.private_ip]
}