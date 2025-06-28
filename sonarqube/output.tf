
output "vpc_id" {
  value       = module.Netwoking.vpc_id
  description = "id of your nginx vpc "
}
output "pub_subnet_id" {
  value       = module.Netwoking.pub_subnet_id
  description = "id of the public subnet "
}
output "pvt_subnet1_id" {
  value       = module.Netwoking.pvt_subnet1_id
  description = "id of the private subnet1 "
}
output "pvt_subnet2_id" {
  value       = module.Netwoking.pvt_subnet2_id
  description = "id of the private subnet2 "
}
##############

output "pub_SG_id" {
  value       = module.Security.pub_SG_id
  description = "id of the public security group "
}

output "pvt_SG_id" {
  value       = module.Security.pvt_SG_id
  description = "id of the private security group "
}

output "pvt_NACL_id" {
  value       = module.Security.pvt_NACL_id
  description = "id of the private NACL"
}

##############

output "pub_instance_id" {
  value       = module.Compute.pub_instance_id
  description = "id of the public instance "
}
output "pvt_instance1_id" {
  value       = module.Compute.pvt_instance1_id
  description = "id of the private instance1 "
}
output "Bastion_Public_IP" {
  value       = module.Compute.Bastion_Public_IP
  description = "Public IP address of the bastion EC2 instance"
}
output "load_balancer_DNS" {
  value       = module.Compute.load_balancer_DNS
  description = "DNS name of load balancer"
}
