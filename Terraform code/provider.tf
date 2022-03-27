terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.4.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "capstone-1999"
    key    = "terraform/"
    dynamodb_table = "terraform-tfstate-table"
    region = "us-east-1"
  }
}
