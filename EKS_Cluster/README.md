# AWS EKS Cluster w/ node.js & App Mesh

The TF files in this directory creates the following resources in a single run:

* VPC
* Public and private subnets
* IGW
* Single AZ NAT Gateway
* EKS Cluster w/ managed node group
* Cluster addons: CoreDNS, Kube-Proxy, and VPC-CNI
* K8S Namespaces
* Deploy Helm Charts