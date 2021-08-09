output "public_instance_ip" {
  value = ["${module.application-instance.public_instance_ip}"]
}