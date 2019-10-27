
#---Networking Outputs -----

output "public_subnets" {
  value = "${join(", ", module.networking.public_subnets)}"
}

output "subnet_IPs" {
  value = "${join(", ", module.networking.subnet_ips)}"
}
output "public_security_group" {
  value = "${module.networking.public_sg}"
}

#---Compute Outputs ------

output "public_instance_IDs" {
  value = "${module.compute.server_id}"
}

output "public_instance_IPs" {
  value = "${module.compute.server_ip}"
}