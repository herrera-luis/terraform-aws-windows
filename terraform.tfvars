aws_region   = "us-west-2"
project_name = "windows-terraform"
vpc_cidr     = "10.123.0.0/16"
public_cidrs = [
  "10.123.1.0/24",
  "10.123.2.0/24"
]
accessip    = "0.0.0.0/0"
key_name = "tfkey_aws"
public_key_path = "/Users/lherrera/keys/tfkey_aws.pub"
server_instance_type = "t2.medium"
instance_count = 1