terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.2.0"
}

resource "aws_instance" "ubuntu-instance" {
  count         = 3
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t3.medium"  # Corrected instance type
  key_name      = "vockey"

  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "instance_${count.index + 1}"
  }
}