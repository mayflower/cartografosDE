output "mf_cncf_zone_ns" {
  value = aws_route53_zone.mf_cncf_zone.name_servers
}

output "mf_maturitymodel_cncf_domain_name" {
    value = aws_cloudfront_distribution.maturitymodel_aws_cdn.domain_name
}