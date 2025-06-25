provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "geth_node" {
  ami           = var.ami_id
  instance_type = "t3.medium"
  key_name      = var.key_name

  user_data     = file("${path.module}/ec2-userdata.sh")

  tags = {
    Name = "GethEthereumNode"
  }

  vpc_security_group_ids = [aws_security_group.geth_sg.id]
}

resource "aws_security_group" "geth_sg" {
  name        = "geth-sg"
  description = "Allow SSH and optional RPC"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["YOUR_IP/32"]
  }

  ingress {
    from_port   = 8545
    to_port     = 8545
    protocol    = "tcp"
    cidr_blocks = ["YOUR_IP/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}