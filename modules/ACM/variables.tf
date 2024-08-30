variable "aws_domain_name" {
  description = "The Route 53 domain name"
  type = string
  default = "example.com" # Change this to your domain name
  
}

variable "alt_aws_domain_name" {
  description = "The Route 53 alt domain name"
  type = list(string)
  default = ["www.example.com"] # Change this to your domain name with the www prefix
  
}