resource "aws_route53_zone" "mf_cncf_zone" {
  name = var.route53_zone
  tags = {
    project = "cncf"
  }
}

#resource "aws_acm_certificate" "maturitymodel_acm_certificate" {
#  domain_name       = "${var.route53_domain}.${var.route53_zone}"
#  validation_method = "DNS"
#
#  options {
#    certificate_transparency_logging_preference = "ENABLED"
#  }
#
#  lifecycle {
#    create_before_destroy = true
#  }
#}
#
#resource "aws_route53_record" "maturitymodel_certificate_record" {
#  for_each = {
#  for domain_validation_op in aws_acm_certificate.maturitymodel_acm_certificate.domain_validation_options : domain_validation_op.domain_name => {
#    name = domain_validation_op.resource_record_name
#    record = domain_validation_op.resource_record_value
#    type = domain_validation_op.resource_record_type
#  }
#  }
#
#  allow_overwrite = true
#  name = each.value.name
#  records = [ each.value.record ]
#  ttl = 60
#  type = each.value.type
#  zone_id = aws_route53_zone.mf_zone.zone_id
#}
#
#resource "aws_acm_certificate_validation" "maturitymodel_acm_certificate_validation" {
#  certificate_arn = aws_acm_certificate.maturitymodel_acm_certificate.arn
#  validation_record_fqdns = [ for record in aws_route53_record.maturitymodel_certificate_record : record.fqdn ]
#
#  timeouts {
#    create = "15m"
#  }
#}
#