# Create an Internet Gateway

resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.VPC-Terraform.id
  tags = {
    Name = "IGW-Terraform"
  }
}