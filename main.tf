#providers
provider "aws" {
	region = var.region
}

#resources
module "vpc" {
  source  = "app.terraform.io/Johns-Org/vpc/aws"
  version = "0.0.1"
}
module "application-instance" {
  source  = "app.terraform.io/Johns-Org/application-instance/aws"
  version = "0.0.6"
}