#KEY PAIR (LOGIN)
resource "aws_key_pair" "my_key" {
  key_name   = "terra-key-ec2"
  public_key = file("terra-key-ec2.pub")
}
#VPC AND SECURITY GROUP
resource "aws_default_vpc" "default" {}

resource "aws_security_group" "my_security_group" {
  name        = "authors-sg"
  description = "This will add an Tf security group"
  vpc_id      = aws_default_vpc.default.id

  #INBOUND RULES
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # HTTP INBOUND RULE
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8000
    to_port     = 8000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  #OUTBOUND RULES
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "authors-sg"
  }
}

#EC2 INSTANCE
resource "aws_instance" "my_instance" {
  key_name        = aws_key_pair.my_key.key_name
  security_groups = [aws_security_group.my_security_group.name]
  instance_type   = var.ec2_aws_instance_type
  ami             = var.aws_am_id
  user_data       = file("install_nginx.sh")

  root_block_device {
    volume_size = var.aws_root_storage_size
    volume_type = "gp3"
  }
  tags = {
    Name = "terraform-varun-ec2"
  }

}