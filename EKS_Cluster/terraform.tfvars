cidr_block = "10.0.0.0/16"

private_subnets = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]

public_subnets = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]

subnet_count = 3

region = "us-east-1"

company = "VCC-SA"

project = "alpha"

author = "@vincarneiro"

cluster_name = "alpha-cluster"

ng-desired-size = 2

ng-max-size = 3

ng-min-size = 2

ng-capacity-type = "SPOT"

ng-instance-type = ["t3.medium", "t2.medium"]