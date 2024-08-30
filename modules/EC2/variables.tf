variable "aws_zone_id" {
  description = "The Route 53 zone ID"
  type = string
  default = "Place your Route 53 zone ID here" # Change this to your Route 53 zone ID
  sensitive = true
  
}

variable "aws_domain_name" {
  description = "The Route 53 domain name"
  type = string
  default = "example.com" # Change this to your domain name
  sensitive = true
  
}

variable "aws_route53_type" {
  description = "The Route 53 record type"
  type = string
  default = "A"
  
}

variable "VPC_ID" {
  description = "The VPC ID"
  type = string
  
}

variable "subnet-one" {
  description = "The subnet one ID"
  type = string
  
}

variable "subnet-two" {
  description = "The subnet two ID"
  type = string
  
}

variable "cert" {
  description = "The ACM certificate ARN"
  type = string
  
}

variable "IG" {
  description = "The Internet Gateway ID"
  type = string
  
}