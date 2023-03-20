
#resource "aws_route53_record" "cartografos_cloudfront_record" {
#  zone_id = aws_route53_zone.mf_zone.zone_id
#  name    = "${var.route53_domain}.${var.route53_zone}"
#  type    = "A"

#  alias {
#    name = aws_cloudfront_distribution.cartografos_aws_cdn.domain_name
#    zone_id = aws_cloudfront_distribution.cartografos_aws_cdn.hosted_zone_id
#    evaluate_target_health = false
#  }
#}

resource "aws_cloudfront_origin_access_identity" "maturitymodel_origin_access_identity" {
    comment = "cloudfront access identity for maturitymodel"
}

resource "aws_cloudfront_distribution" "maturitymodel_aws_cdn" {
  enabled = true

  origin {
    origin_id = "origin-bucket-${aws_s3_bucket.maturitymodel_website.id}"
    domain_name = aws_s3_bucket_website_configuration.maturitymodel_website_configuration.website_endpoint

    custom_origin_config {
      http_port = "80"
      https_port = "443"
      origin_protocol_policy = "http-only"
      origin_ssl_protocols = [ "TLSv1.2" ]
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }
#  aliases = ["${var.route53_domain}.${var.route53_zone}"]

#  viewer_certificate {
#    acm_certificate_arn = aws_acm_certificate.maturitymodel_acm_certificate.arn
#    ssl_support_method = "sni-only"
#    minimum_protocol_version = "TLSv1.2_2018"
#  }

  is_ipv6_enabled = true
  default_root_object = "index.html"

  default_cache_behavior {
    allowed_methods        = ["GET", "HEAD", "DELETE", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods         = ["GET", "HEAD"]
    min_ttl                = "0"
    default_ttl            = "300"
    max_ttl                = "1200"
    target_origin_id       = "origin-bucket-${aws_s3_bucket.maturitymodel_website.id}"
    viewer_protocol_policy = "redirect-to-https"
    compress               = true

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  tags = {
    project = "cncf-maturitymodel",
    repository = "https://github.com/mayflower/cartografosDE"
  }
}
