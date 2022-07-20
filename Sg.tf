 provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_security_group" "allow_tls"{
    name        = "allow_tls"
    description = "Allow TLS inbound traffic"
    vpc_id      = vpc-0f9d11cca60e0e6b6

  ingress {
    description = "inbound"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}