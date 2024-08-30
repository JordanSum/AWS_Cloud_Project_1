output "VPC_ID" {
    value = aws_vpc.VPC-Terraform.id
  
}

output "subnet-one" {
    value = aws_subnet.subnet-one.id
  
}

output "subnet-two" {
    value = aws_subnet.subnet-two.id
  
}

output "IG" {
    value = aws_internet_gateway.IGW.id
  
}