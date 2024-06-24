provider "aws" {
  alias = "iam-policy"
  region = var.region

  shared_credentials_files = [var.shared_credentials_file]
  profile = var.use_localstack ? "test" : "default"

  endpoints {
    iam = var.use_localstack ? "http://127.0.0.1:4566" : null
  }

  skip_credentials_validation = var.use_localstack ? true : false
  skip_metadata_api_check = var.use_localstack ? true : false
  skip_requesting_account_id = var.use_localstack ? true : false
}

resource "aws_iam_policy" "this" {
  for_each = var.policies

  name = each.value["name"]
  description = each.value["description"]
  policy = templatefile(each.value["template_file"], {})

  tags = var.tags
}
