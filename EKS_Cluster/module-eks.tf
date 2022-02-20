module "eks" {
  source = "terraform-aws-modules/eks/aws"

  cluster_name                    = var.cluster_name
  cluster_version                 = "1.21"
  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true

  cluster_addons = {
    coredns = {
      resolve_conflicts = "OVERWRITE"
    }
    kube-proxy = {}
    vpc-cni = {
      resolve_conflicts = "OVERWRITE"
    }
  }

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets


  # EKS Managed Node Group(s)
  eks_managed_node_group_defaults = {
    ami_type       = "AL2_x86_64"
    disk_size      = 50
    instance_types = var.ng-instance-type
  }

  eks_managed_node_groups = {
    ng1 = {
      min_size     = var.ng-min-size
      max_size     = var.ng-max-size
      desired_size = var.ng-desired-size

      instance_types = var.ng-instance-type
      capacity_type  = var.ng-capacity-type

      tags = local.common_tags
    }
  }

  tags = local.common_tags
}

