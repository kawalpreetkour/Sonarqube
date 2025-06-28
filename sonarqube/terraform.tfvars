# Networking Variables
region_name         = "ap-south-1"
vpc_name            = "sonar-VPC"
vpc_cidr            = "10.0.0.0/16"
dns_support         = true
dns_hostnames       = true
pub_sub_name        = "public-subnet"
pub_sub_cidr        = "10.0.1.0/24"
availability_zone01 = "ap-south-1a"
pvt_sub_name1       = "private-subnet-1"
pvt_sub1_cidr       = "10.0.2.0/24"
pvt_sub_name2       = "private-subnet-2"
pvt_sub2_cidr       = "10.0.3.0/24"
availability_zone02 = "ap-south-1b"
vpc_accept          = true

# Security Variables

public_ingress_rules = [
  { from_port = 22, to_port = 22, protocol = "tcp", description = "SSH" },
  { from_port = 80, to_port = 80, protocol = "tcp", description = "HTTP" },
  { from_port = 443, to_port = 443, protocol = "tcp", description = "HTTPS" },
  { from_port = 0, to_port = 0, protocol = "-1", description = "All Inbound" }
]

public_egress_rules = [
  { from_port = 0, to_port = 0, protocol = "-1", description = "All Outbound" }
]

pub_sg_name = "public_sg"
pub_sg_tag  = "public_Sgroup"

private_ingress_rules = [
  { from_port = 22, to_port = 22, protocol = "tcp", description = "SSH" },
  { from_port = 80, to_port = 80, protocol = "tcp", description = "HTTP" },
  { from_port = 443, to_port = 443, protocol = "tcp", description = "HTTPS" },
]
private_egress_rules = [
  { from_port = 0, to_port = 0, protocol = "-1", description = "All Outbound" }
]
pvt_sg_name = "private_sg"
pvt_sg_tag  = "private_Sgroup"

egress_rule_nacl = {
  protocol   = "all"
  rule_no    = 200
  action     = "allow"
  cidr_block = "0.0.0.0/0"
  from_port  = 0
  to_port    = 0
}
ingress_rule_nacl = {
  protocol   = "all"
  rule_no    = 100
  action     = "allow"
  cidr_block = "0.0.0.0/0"
  from_port  = 0
  to_port    = 0
}

# Compute Variables
pub_instance         = "Bastion_host"
tag_name_ec2         = "sonar"
pvt_instance1        = "sonar-server1"
pvt_instance2        = "sonar-server2"
ami_id               = "ami-053b12d3152c0cc71"
pem_key              = "sonar_key"
pub_ec2_type         = "t2.micro"
pvt_ec2_type         = "t3.medium"
assign_public_IP_pub = true
assign_public_IP_pvt = false
volume_size          = 29

tg_name                  = "sonar-tg"
tg_port                  = 9000
tg_protocol              = "HTTP"
health_check_path        = "/"
health_check_interval    = 30
health_check_timeout     = 5
health_check_threshold   = 2
unhealth_check_threshold = 2
health_check_matcher     = 200
tg_attachment_port       = 80
lb_name                  = "sonar-LB"
lb_internal              = false
lb_tpye                  = "application"
lb_enable_deletion       = false
alb_listener_port        = 80
alb_listener_protocol    = "HTTP"
alb_listener_action      = "forward"
enable_deletion          = false
