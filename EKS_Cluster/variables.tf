
##################################################################################
# VARIABLES
##################################################################################

variable "region" {
  type = string
}

variable "subnet_count" {
  type = number
}

variable "cidr_block" {
  type = string
}

variable "private_subnets" {
  type = list(any)
}

variable "public_subnets" {
  type = list(any)
}

variable "company" {
  type        = string
  description = "Company name for resource tagging"
}

variable "project" {
  type        = string
  description = "Project name for resource tagging"
}

variable "author" {
  type        = string
  description = "Author's name"
}

variable "cluster_name" {
  type = string
}

variable "ng-desired-size" {
  type = number
}

variable "ng-max-size" {
  type = number
}

variable "ng-min-size" {
  type = number
}

variable "ng-capacity-type" {
  type        = string
  description = "Valid values are ON_DEMAND or SPOT"
}

variable "ng-instance-type" {
  type = list(any)
}