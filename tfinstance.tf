terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.5.0"
    }
  }
}

provider "aws" {
   region = "eu-west-3"
  
}

resource "aws_instance" "terraform-cloud" {
  ami           = "ami-0250b8540c1cc85d4"
  instance_type = "t2.micro"
tags = {
  Name = "terraform-sentinel"
}
 
}
