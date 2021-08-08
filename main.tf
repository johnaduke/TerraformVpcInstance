#providers
provider "aws" {
	region = var.region
}

#resources
module "vpc" {
  source  = "app.terraform.io/Johns-Org/vpc/aws"
  version = "0.0.1"
}