# provider
# resource

terraform {
  required_version = "~> 1.0" 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
  region = "us-east-1"
  #profile = "default"
  #access_key = "AKIAYBVHBULS234OQUMH"
  #secret_key = "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"
}

resource "aws_instance" "first_ec2_instance" {
  ami = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
#  count = 1
#  key_name = "ec2-key"
}