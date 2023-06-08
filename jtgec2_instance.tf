terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
  }
}

terraform{
        required_version = ">=0.13"
}

provider "aws" {
        region = "us-east-2"
}

resource "aws_instance" "ec2_assignment_terraform" {
  instance_type = "t2.micro"                # Replace with your desired instance type
}

  
output "public_ip" {
  value = aws_instance.ec2_assignment_terraform.public_ip
}

