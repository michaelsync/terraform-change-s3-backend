provider "aws" {
  profile = "default"
  region  = "ap-southeast-2"
}

resource "aws_s3_bucket" "b" {
  bucket = "mt-tf-t-bucket-101"
  acl    = "private"

  tags = {
    Name        = "mt-tf-t-bucket-101"
    Environment = "Dev"
    ManagedBy = "MS"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }

  backend "s3" {
    bucket = "ms-test-map-locations"
    key    = "test2/pipeline.tfstate"
    region = "ap-southeast-2"
  }

}