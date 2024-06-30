terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.55.0"
    }
  }
}
provider "aws" {
  region                   = "ap-northeast-2"
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "test"
  endpoints {
    iam = "http://127.0.0.1:4566"
  }
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
}

locals {
  user_policy_pairs = flatten([
    for user_name, user_data in var.users_policies : [
      for policy_arn in user_data.policy_arns : {
        user_name  = user_name
        policy_arn = policy_arn
      }
    ]
  ])
}

module "iam_user" {
  source         = "../../../../modules/iam/user"
  for_each       = var.users_policies
  user_name      = each.key
  user_path      = "/"
  console_user   = each.value.console_user
  use_localstack = true
}

resource "aws_iam_user_policy_attachment" "user_policy_attachment" {
  for_each = { for pair in local.user_policy_pairs : "${pair.user_name}-${basename(pair.policy_arn)}" => pair }

  user       = each.value.user_name
  policy_arn = each.value.policy_arn

  depends_on = [module.iam_user]
}
