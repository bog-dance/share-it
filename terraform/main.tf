terraform {
  required_version = ">= 0.11.3"

  backend "s3" {
    bucket = "platform-cli-state-330026049439"
    key    = "data/data/gnar-writr-lb.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region  = "us-east-1"
  version = "~> 1.12"

  allowed_account_ids = [
    "330026049439",
  ]
}
