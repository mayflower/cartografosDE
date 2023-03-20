resource "aws_s3_bucket" "maturitymodel_website" {
    bucket = "mf-maturitymodel-website"
    tags = {
      project = "cncf-maturitymodel",
      repository = "https://github.com/mayflower/cartografosDE"
    }
}

resource "aws_s3_bucket_versioning" "maturitymodel_website_versioning" {
    bucket = aws_s3_bucket.maturitymodel_website.id
    versioning_configuration {
      status = "Disabled"
    }
}

resource "aws_s3_bucket_website_configuration" "maturitymodel_website_configuration" {
    bucket = aws_s3_bucket.maturitymodel_website.bucket

    index_document {
      suffix = "index.html"
    }

    error_document {
      key = "404.html"
    }
}

resource "aws_s3_object" "maturitymodel_frontend_build" {
  for_each = fileset("../website/public", "**")

  bucket = aws_s3_bucket.maturitymodel_website.id
  key = each.value
  source = "../website/public/${each.value}"

  etag = filemd5("../website/public/${each.value}")

  content_type = lookup(local.content_type_map,
    regex("\\.?[^\\.]+\\z", each.value),
    "application/octet-stream"
  )
}

resource "aws_s3_bucket_policy" "maturitymodel_bucket_policy" {
    bucket = aws_s3_bucket.maturitymodel_website.id
    policy = data.aws_iam_policy_document.maturitymodel_policy_document.json
}

data "aws_iam_policy_document" "maturitymodel_policy_document" {
  statement {
    principals {
      type = "*"
      identifiers = ["*"]
    }

    actions = [
      "s3:GetObject",
    ]

    effect = "Allow"
    resources = [ "${aws_s3_bucket.maturitymodel_website.arn}/*" ]
  }
}