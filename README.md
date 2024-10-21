# Terraform AWS Infrastructure Using VPC, EC2, and ALB.

This Terraform project is designed to create and manage a comprehensive AWS infrastructure. The infrastructure components include a VPC, EC2 instances, an Application Load Balancer (ALB), security groups, ACM certificates, and other related resources.

## Table of Contents

- [Project Overview](#project-Overview)

- [Components](#components)

  - [ACM (AWS Certificate Manager)](#ACM-AWS-Certificate-Manager)

  - [EC2 (Elastic Cloud Compute)](#EC2-Elastic-Cloud-Compute)

  - [ALB (Application Load Balancer)](#ALB-Application-Loadbalancer)

  - [ALB Target Group](#ALB-Target-Group)

  - [EIP (Elastic IP)](#EIP-Elastic-IP)

  - [NIC (Network Interface Card)](#Network-Interface-Card)

  - [SG (Security Groups)](#SG-Security-Groups)

  - [IG (Internet Gateway)](#IG-Internet-Gateway)

  - [RT (Route Table)](#RT-Route-Table)

  - [Subnet](#Subnet)

  - [VPC (Virtual Private Cloud)](#VPC-Virtual-Private-Cloud)

- [Usage](#usage)


### Project Overview

This project automates the deployment of an AWS infrastructure using Terraform. It covers the essential components needed to deploy and manage a secure, scalable, and maintainable environment. The primary focus is on deploying a VPC with EC2 instances, and setting up an ALB for traffic management.

> [!WARNING]  
> This is a development project and should NOT be used for production. Please use best policy and security when deploying this project

### Components

### ACM (AWS Certificate Manager)

ACM is used to manage SSL/TLS certificates for securing your application. This project provisions ACM certificates, which are then associated with the ALB to enable HTTPS connections.

 - Variables.tf (Included)

   - aws_domain_name (example.com)
   - alt_aws_domain_name (www.example.com)

### EC2 (Elastic Cloud Compute)

EC2 instances are the compute resources where your application will run. This project provisions EC2 instances within the VPC, installs necessary software, and runs a CodeDeploy agent to facilitate deployments.

- Variables.tf file (Included)

  - aws_zone_id
  - aws_domain_name
  - aws_route53_type
  - vpc_id
  - aws_subnet_one
  - aws_subnet_two
  - cert (The ARN of the certificate)
  - IGW (The ID of the Internet Gateway)

### ALB (Application Load Balancer)

The ALB distributes incoming application traffic across multiple EC2 instances, improving fault tolerance and availability. The ALB is configured to use the SSL/TLS certificates from ACM.

### ALB Target Group

The ALB target group contains the EC2 instances that the ALB routes traffic to. Health checks are configured to ensure that only healthy instances receive traffic.

### EIP (Elastic IP)

An Elastic IP is a static IPv4 address designed for dynamic cloud computing. In this project, EIPs are associated with EC2 instances to ensure they have a consistent public IP address.

### NIC (Network Interface Card)

A Network Interface Card is a attachment to your EC2 instance that provides a private IP address. This allows your instances to communicate localy and to the public.

### SG (Security Groups)

Security groups act as virtual firewalls for your EC2 instances and ALB. This project configures security groups to control inbound and outbound traffic to the instances and load balancer.

### IG (Internet Gateway)

The internet gateway enables internet access for the resources within your VPC. This is essential for allowing EC2 instances to communicate with external services.

### RT (Route Table)

The route table contains rules that determine where network traffic is directed. In this project, route tables are configured to route traffic between the VPC, subnets, and the internet gateway.

### Subnet

Subnets are used to segment the VPC into different network zones. This project provisions subnets within the VPC for hosting EC2 instances and other resources.

### VPC (Virtual Private Cloud)

The VPC is the foundational networking layer for your AWS infrastructure. This project creates a VPC with defined CIDR blocks, subnets, route tables, and internet gateways.

### Usage

To use this project, clone the repository and configure the Terraform variables according to your environment. Then, apply the Terraform configuration to provision the resources in your AWS account.

- terraform init

- terraform plan

- terraform apply

Ensure that you have AWS credentials configured on your machine or provide them through environment variables or a credentials file.
