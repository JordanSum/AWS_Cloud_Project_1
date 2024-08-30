# Create EC2 Instances

resource "aws_instance" "app_server1" {
  ami                  = "ami-078701cc0905d44e4"
  instance_type        = "t2.micro"
  availability_zone    = "us-west-2a"
  key_name             = "Terraform-VM-Key" # Change this to your own key name (This is the key name you need to create in the aws console)
  

  network_interface {
    network_interface_id = aws_network_interface.NIC1.id
    device_index         = 0
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install httpd -y
              sudo systemctl start httpd
              sudo systemctl enable httpd
              echo "<h1>This is the primary server</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "app-server-one"
  }
}

resource "aws_instance" "app_server2" {
  ami                  = "ami-078701cc0905d44e4"
  instance_type        = "t2.micro"
  availability_zone    = "us-west-2b"
  key_name             = "Terraform-VM-Key" # Change this to your own key name (This is the key name you need to create in the aws console)
  

  network_interface {
    network_interface_id = aws_network_interface.NIC2.id
    device_index         = 0
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo yum install httpd -y
              sudo systemctl start httpd
              sudo systemctl enable httpd
              echo "<h1>This is the secondary server</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "app-server-two"
  }
}