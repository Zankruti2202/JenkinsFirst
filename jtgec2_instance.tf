provider "aws" {
  region = "us-east-2"  # Replace with your desired region
}

resource "aws_instance" "JenkinsAssignment" {
  ami           = "ami-05842f1afbf311a43"  # Replace with your desired AMI ID
  instance_type = "t2.micro"                # Replace with your desired instance type

  tags = {
    Name = "AssignmentInstance"
  }
}

