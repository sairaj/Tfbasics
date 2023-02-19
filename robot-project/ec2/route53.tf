resource "aws_route53_record" "www" {
  zone_id = "Z0405036A3AZF8G0ONQV"
  name    = "${var.COMPONENT}-dev.roboshop.internal"
  type    = "A"
  ttl     = 300
  records = [aws_instance.this.private_ip]
}