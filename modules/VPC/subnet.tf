# Create a Subnet(s)

resource "aws_subnet" "subnet-one" {
  vpc_id            = aws_vpc.VPC-Terraform.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "dev-subnet1"
  }
}

resource "aws_subnet" "subnet-two" {
  vpc_id            = aws_vpc.VPC-Terraform.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-west-2b"

  tags = {
    Name = "dev-subnet2"
  }
}

# route table association for subnet 1
resource "aws_route_table_association" "terraform-RT-Association1" {
  subnet_id      = aws_subnet.subnet-one.id
  route_table_id = aws_route_table.terraform-RT.id
}

# route table association for subnet 2
resource "aws_route_table_association" "terraform-RT-Association2" {
  subnet_id      = aws_subnet.subnet-two.id
  route_table_id = aws_route_table.terraform-RT.id
}