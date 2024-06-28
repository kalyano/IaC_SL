terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
        }
    }
}

# Configure the AWS Provider
provider "aws" {
    region = "us-east-1"
}

# ec2 instance with web server
resource "aws_instance" "web" {
    ami = "ami-0574da719dca65348"
    instance_type = "t2.micro"
    tags = {
        Name = "web-server-testEnv"
    }
}
