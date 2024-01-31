# main.tf

provider "aws" {
  region = "ap-south-1" # Replace with your desired AWS region
}

resource "aws_security_group" "security_group_portal_dev" {
  name        = "Security_Group_Portal"
  description = "This is the Security Group for Portal-Dev"
  
  ingress {
    from_port   = 30165
    to_port     = 30182
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 30184
    to_port     = 30184
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
