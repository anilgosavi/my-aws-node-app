provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./vpc.tf"
}
module "ec2" {
  source = "./ec2_instances.tf"
  vpc_id = module.vpc.vpc_id
}
module "dynamodb" {
  source = "./dynamodb.tf"
  vpc_id = module.vpc.vpc_id
}
