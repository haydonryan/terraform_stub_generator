#!/bin/bash

#anything with a T in front of it is a test value and not actual.
aws_access_key="AKIAJEOYTESV2SSK7KUQ"
aws_secret_key="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"
aws_key_path="~/.ssh/bosh.pem"
aws_key_name="bosh"
aws_region="us-east-1"

z0_az="us-east-1a"
z1_az="us-east-1c"

lb_z0_cidr="10.202.82.0/25"
lb_z1_cidr="10.202.82.128/25"
cf_z0_cidr="10.202.83.0/25"
cf_z1_cidr="10.202.83.128/25"
svc_z0_cidr="10.202.84.0/25"
svc_z1_cidr="10.202.84.128/25"
rds_z0_cidr="10.202.85.0/25"
rds_z1_cidr="10.202.85.128/25"
bosh_z0_cidr="10.202.86.0/25"
bosh_z1_cidr="10.202.86.128/25"

aws_vpc_id="vpc-44472d21"
#10.202.64.0/19"

# These values need to come from the VPC you created
# and from the default route table of the VPC.

# aws_internet_gateway_id = "igw-cfca73aa"

# In private mode, route tables will be the same, and go through the NAT gateway
# When allowing internet ingress, the public route table will be different
aws_route_table_public_id="rtb-ed8acf88"
aws_route_table_private_id="rtb-ed8acf88"

aws_microbosh_subnet_id="subnet-1234T"

aws_eip_cf_public_ip="12.34.56.78"
aws_subnet_cfruntime_2a_id="123"
aws_subnet_cfruntime_2a_availability_zone="us-east-1a"
aws_subnet_cfruntime_2b_id="123"
aws_subnet_cfruntime_2b_availability_zone="us-east-1a"
aws_instance_bastion_availability_zone="us-east-1a"
aws_instance_bastion_id="instance-123"
aws_subnet_lb_id="LB-id1"
aws_subnet_lb_availability_zone="us-east-1a"
aws_security_group_cf_name="security-123"
cf_admin_pass="werock!"
cf_domain="hnrglobaler.com"
cf1_cidr="10.202.83.0/25"
cf2_cidr="10.202.83.128/25"
vpc_cidr="10.202.0.0/16"
network="blah"
#aws_subnet_cfruntime_2a_availability_zone aws_subnet_cfruntime_2b_id aws_subnet_cfruntime_2b_availability_zone aws_instance_bastion_availability_zone aws_instance_bastion_id aws_subnet_lb_id aws_subnet_lb_availability_zone aws_security_group_cf_name cf_admin_pass cf_domain                                

./generate_stub.rb \
$aws_access_key \
$aws_secret_key \
$aws_region \
$aws_vpc_id \
$aws_microbosh_subnet_id \
$network \
$aws_eip_cf_public_ip \
$aws_subnet_cfruntime_2a_id \
$aws_subnet_cfruntime_2a_availability_zone \
$aws_subnet_cfruntime_2b_id \
$aws_subnet_cfruntime_2b_availability_zone \
$aws_instance_bastion_availability_zone \
$aws_instance_bastion_id \
$aws_subnet_lb_id \
$aws_subnet_lb_availability_zone \
$aws_security_group_cf_name \
$cf_admin_pass \
$cf_domain \
$cf1_cidr \
$cf2_cidr \
$vpc_cidr
