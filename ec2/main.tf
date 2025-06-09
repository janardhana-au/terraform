terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  
}


resource "aws_instance" "hello-world" {
    ami           =  "ami-09c813fb71547fc4f"
    instance_type =   "t3.micro"

    tags = {
        Name = "Hello world"
    }
  
}