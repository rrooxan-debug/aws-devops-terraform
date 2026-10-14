# 1. Configure Provider (AWS)
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1" # Waxaad ka dhigi kartaa region-ka aad jeceshahay
}

# 2. Create Custom VPC
resource "aws_vpc" "devops_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    Name = "DevOps-Production-VPC"
    Environment = "Production"
    ManagedBy = "Terraform"
  }
}

# 3. Create Public Subnet
resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.devops_vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"

  tags = {
    Name = "DevOps-Public-Subnet"
  }
}

# 4. Create Internet Gateway (IGW)
resource "aws_internet_gateway" "devops_igw" {
  vpc_id = aws_vpc.devops_vpc.id

  tags = {
    Name = "DevOps-IGW"
  }
}

# 5. Create Route Table for Public Subnet
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.devops_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.devops_igw.id
  }

  tags = {
    Name = "DevOps-Public-RouteTable"
  }
}

# 6. Associate Subnet with Route Table
resource "aws_route_table_association" "public_assoc" {
  subnet_id = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rt.id
}
