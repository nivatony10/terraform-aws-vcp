variable "project" {
  description = "EKS-terraform"
}

variable "environment" {
  description = "The deployment environment"
  default     = "production"
}

variable "region" {
  description = "The AWS Region"
}

variable "availability_zones" {
  type        = list(any)
  description = "us-east-1a""
}

variable "vpc_cidr" {
  description = "The CIDR block of the vpc"
  default     = "10.0.0.0/16"
}

variable "public_subnets_cidr" {
  type        = list(any)
  default = ["10.0.10.0/24", "10.0.20.0/24"]

}

variable "private_subnets_cidr" {
  type        = list(any)
  description = "The CIDR block for the private subnet"
}
