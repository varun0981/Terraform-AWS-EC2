#DEV INFRASCRUCTURE 
module "dev-infra" {
    source = "./infra-app"
    env = "dev"  
    bucket_name = "varun-infra-bucket"     
    instance_count = 1
    instance_type = "t2.micro"
    ec2_ami_id = "ami-0e1011556f696c3d3" #Amazon ubuntu 
    hash_key = "studentID"
  
}

#prd INFRASCRUCTURE 
module "prd-infra" {
    source = "./infra-app"
    env = "prd"  
    bucket_name = "varun-infra-bucket"     
    instance_count = 2
    instance_type = "t2.medium"
    ec2_ami_id = "ami-0e1011556f696c3d3" #Amazon ubuntu 
    hash_key = "studentID"
  
}


#stage INFRASCRUCTURE 
module "stage-infra" {
    source = "./infra-app"
    env = "stage"  
    bucket_name = "varun-infra-bucket"     
    instance_count = 1
    instance_type = "t2.small"
    ec2_ami_id = "ami-0e1011556f696c3d3" #Amazon ubuntu 
    hash_key = "studentID"
  
}

