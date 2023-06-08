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
        profile = "default"
        region = "us-east-2"
}

resource "aws_instance" "ec2_assignment_terraform" {
  ami           = "ami-05842f1afbf311a43"
  instance_type = "t2.micro"                # Replace with your desired instance type
}

  
output "public_ip" {
  value = aws_instance.ec2_assignment_terraform.public_ip
}

