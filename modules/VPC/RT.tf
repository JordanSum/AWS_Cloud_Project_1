# Create a Route Table

resource "aws_route_table" "terraform-RT" {
  vpc_id = aws_vpc.VPC-Terraform.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }

  route {
    ipv6_cidr_block = "::/0"
    gateway_id      = aws_internet_gateway.IGW.id
  }

  tags = {
    Name = "RT-Terraform"
  }
}
