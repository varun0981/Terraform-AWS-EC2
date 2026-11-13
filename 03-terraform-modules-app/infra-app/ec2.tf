#KEY PAIR (LOGIN)
resource "aws_key_pair" "my_key" {
  key_name   = "${var.env}-terra-key-ec2"
  public_key = file("terra-key-ec2.pub")
  tags = {
    Environment = var.env
  }
}
#VPC AND SECURITY GROUP
resource "aws_default_vpc" "default" {}

resource "aws_security_group" "my_security_group" {
  name        = "${var.env}-authors-sg"
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
    Name = "${var.env}-authors-sg"
  }
}

#EC2 INSTANCE
resource "aws_instance" "my_instance" {
    count = var.instance_count
  key_name        = aws_key_pair.my_key.key_name
  security_groups = [aws_security_group.my_security_group.name]
  instance_type   = var.instance_type
  ami             = var.ec2_ami_id
  user_data = file("${path.module}/../install_nginx.sh")

  root_block_device {
    volume_size = var.env == "prod" ? 20 : 10
    volume_type = "gp3"
  }
  tags = {
    Name = "${var.env}-terraform-varun-ec2"
    Environment = var.env
  }

}