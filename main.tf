terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "dev" {
  count         = 1
  ami           = "ami-026bb75827bd3d68d"
  instance_type = "t2.micro"
  key_name      = "terraform-unyleya"

  tags = {
    Name = "IISUnyleyaAWS"
  }
}
