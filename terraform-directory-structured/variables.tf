variable "project" {
  description = "EKS-terraform"
}

variable "environment" {
  description = "The deployment environment"
  default     = "production"
}

variable "region" {
  description = "ap-south-1"
}

variable "availability_zones" {
  type        = list(any)
  description = "ap-south-1a"
}

variable "vpc_cidr" {
  description = "The CIDR block of the vpc"
  default     = "10.0.0.0/16"
}

variable "public_subnets_cidr" {
  type    = list(any)
  default = ["10.0.10.0/24", "10.0.20.0/24"]

}

variable "private_subnets_cidr" {
  type    = list(any)
  default = ["10.0.30.0/24", "10.0.40.0/24"]

}

variable "public1_subnets_cidr" {
  type    = list(any)
  default = ["10.0.21.0/24", "10.0.31.0/24"]

}

variable "private1_subnets_cidr" {
  type    = list(any)
  default = ["10.0.41.0/24", "10.0.51.0/24"]

}

variable "filename" {}`
