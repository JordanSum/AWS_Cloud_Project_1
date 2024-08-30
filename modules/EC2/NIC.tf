# Create a Network Interface(s)

resource "aws_network_interface" "NIC1" {
  subnet_id       = var.subnet-one
  private_ips     = ["10.0.1.10"]
  security_groups = [aws_security_group.terraform-SG.id]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_network_interface" "NIC2" {
  subnet_id       = var.subnet-two
  private_ips     = ["10.0.2.10"]
  security_groups = [aws_security_group.terraform-SG.id]

  tags = {
    Name = "secondary_network_interface"
  }
}