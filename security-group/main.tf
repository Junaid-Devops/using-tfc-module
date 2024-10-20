provider "aws" {
  region  = "us-east-1"
}

module "security-group" {
  source              =  "app.terraform.io/Agero/security-group/aws"
  version             = "4.8.0"
  name                = "test-module"
  description         = "Security group for with HTTP ports open within VPC"
  vpc_id              = "vpc-f01b8f88"
  ingress_cidr_blocks = ["10.10.0.0/16"]
  
}

