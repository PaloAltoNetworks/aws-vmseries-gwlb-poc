terraform {
  required_version = ">= 1.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

provider "aws" {
  # access_key = var.access-key
  # secret_key = var.secret-key
  # region     = var.region
}