variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
  default     = "jenkins-eks"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_1_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "public_subnet_2_cidr" {
  type    = string
  default = "10.0.2.0/24"
}

variable "private_subnet_1_cidr" {
  type    = string
  default = "10.0.3.0/24"
}

variable "private_subnet_2_cidr" {
  type    = string
  default = "10.0.4.0/24"
}

variable "az_1" {
  type    = string
  default = "ap-south-1a"
}

variable "az_2" {
  type    = string
  default = "ap-south-1b"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "jenkins-eks-cluster"
}

variable "node_group_name" {
  description = "EKS node group name"
  type        = string
  default     = "worker-nodes"
}

variable "node_instance_types" {
  description = "Worker node instance types"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "desired_size" {
  type    = number
  default = 2
}

variable "max_size" {
  type    = number
  default = 2
}

variable "min_size" {
  type    = number
  default = 2
}