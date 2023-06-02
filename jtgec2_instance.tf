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
        access_key = "AKIAU4VI4Z3JBNSKOYOP"
        secret_key = "G3VMPu08U4B+YLKm1ySNMRBMGquSaJnLW7nwBOo9"
}

resource "aws_instance" "ec2_assignment_terraform" {
  ami           = "ami-05842f1afbf311a43"  # Replace with your desired AMI ID
  instance_type = "t2.micro"                # Replace with your desired instance type

  tags = {
    Name = "JenkinsTerraformAssignment"
  }

output "public_ip" {
  value = aws_instance.ec2_assignment_terraform.public_ip
}

