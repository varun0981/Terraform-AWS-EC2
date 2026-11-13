variable "ec2_aws_instance_type" {
  default = "t2.micro"
  type    = string

}

variable "aws_root_storage_size" {
  default = 10
  type    = number
}

variable "aws_am_id" {
  default = "ami-020ba0ae8c230ae28"
  type    = string
}

variable "env" {
  description = "Deployment environment name"
  type        = string
  default     = "dev"
}