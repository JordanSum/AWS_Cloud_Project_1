terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
  profile = "default"
}

module "ACM" {
  source = "./modules/ACM"
}

module "EC2" {
  source = "./modules/EC2"
  VPC_ID = module.VPC.VPC_ID
  subnet-one = module.VPC.subnet-one
  subnet-two = module.VPC.subnet-two
  cert = module.ACM.cert
  IG = module.VPC.IG
}

module "VPC" {
  source = "./modules/VPC"
}
