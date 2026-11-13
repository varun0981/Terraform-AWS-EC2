
terraform {
  backend "s3" {
    bucket       = "varun-tf-state-bucket"
    key          = "terraform.tfstate"
    region       = "us-east-2"
    use_lockfile = true
  }
}


