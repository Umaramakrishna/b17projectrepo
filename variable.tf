
variable "region" {

  description = "region"
  default     = "us-east-1"

}

variable "vpc_cidr" {

  description = "cidr id of vpc"
  type        = string

}


variable "public_subnets" {
  description = "list of public subnets with cidr and az"
  type = list(object({
    cidr = string
    az   = string
  }))
}

variable "private_subnets" {
  description = "list of private subnets with cidr and az"
  type = list(object({
    cidr = string
    az   = string
  }))
}


