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
  version = "0.0.7"
  public_ssh_key = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAjPOZ+5g+VYMO4+8tFnCzm33Y+VYOaDcMoTbYWRgaNT94cQ9cYnyahsxSIwkcL2SJfhlwe1X2ULhEc5gHwvATilf7zYKfWddQ5WMwjmdVViqPG0CVc+yZnFAHQAqTBy0lV1xGPYyeFFZRNyXqu899nit/pB1WxY0PjzR3parwkG4U1VA4xOjx2ChfQOKnecZp6oETVN/diVrL9tCGavHih9eTfZkylnCL2DriHDzBMqn1+JleRKPsaPDNQ7+dxjjEbdAC2zLIp+iYZ4reh6cok1j8RE8LA8g5RlcceI4FLz7ELEYn0zeyQP/af58arj87+Ihp7dGQDygy6/0SdifVSw== rsa-key-20210808"
  public_subnet_id = "${module.vpc.public_subnets}"
  vpc_id = "${module.vpc.vpc_id}"
}