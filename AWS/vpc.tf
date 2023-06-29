locals {
    cidr = "${var.network}/${var.netmask}"
}

resource "aws_vpc" "VPC_Terraform" {
  cidr_block       = local.cidr
  #172.16.0.0/16

   tags = {
     Name = "EducacionIT-vpc"
     Clase = "4"
   }
}

resource "aws_subnet" "Subnet" {
    for_each = {
        "subnet_3" = { cidr_block = cidrsubnet(local.cidr, 4, 0), tag_name = "EducacionIT-subnet-public3-us-east-1a", availability_zone = "us-east-1a" }
        "subnet_5" = { cidr_block = cidrsubnet(local.cidr, 4, 1), tag_name = "EducacionIT-subnet-public1-us-east-1a", availability_zone = "us-east-1a" }
        "subnet_6" = { cidr_block = cidrsubnet(local.cidr, 4, 2), tag_name = "EducacionIT-subnet-public2-us-east-1b", availability_zone = "us-east-1b" }
        "subnet_8" = { cidr_block = cidrsubnet(local.cidr, 4, 3), tag_name = "EducacionIT-subnet-public4-us-east-1b", availability_zone = "us-east-1b" }
        "subnet_1" = { cidr_block = cidrsubnet(local.cidr, 4, 12), tag_name = "EducacionIT-subnet-private1-us-east-1a", availability_zone = "us-east-1a" }
        "subnet_2" = { cidr_block = cidrsubnet(local.cidr, 4, 13), tag_name = "EducacionIT-subnet-private2-us-east-1b", availability_zone = "us-east-1b" }
        "subnet_4" = { cidr_block = cidrsubnet(local.cidr, 4, 14), tag_name = "EducacionIT-subnet-private4-us-east-1b", availability_zone = "us-east-1b" }
        "subnet_7" = { cidr_block = cidrsubnet(local.cidr, 4, 15), tag_name = "EducacionIT-subnet-private3-us-east-1a", availability_zone = "us-east-1a" }
    }
    
    vpc_id     = aws_vpc.VPC_Terraform.id
    cidr_block = each.value.cidr_block
    availability_zone = each.value.availability_zone

    tags = {
        Name = each.value.tag_name
        Clase = "6"
    }
}

resource "aws_internet_gateway" "InternetGateway" {
  vpc_id = aws_vpc.VPC_Terraform.id

  tags = {
    Name = "EducacionIT-igw"
  }
}

resource "aws_nat_gateway" "NATGateway" {
  subnet_id     = aws_subnet.Subnet["subnet_3"].id

  tags = {
    Name = "EducacionIT-nat-public1-us-east-1a"
  }
  depends_on = [aws_internet_gateway.InternetGateway]
}

resource "aws_route_table" "Public_Route_Table" {
  vpc_id = aws_vpc.VPC_Terraform.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.InternetGateway.id
  }

  route {
    cidr_block = "172.16.0.0/16"
    gateway_id = "local"
  }

  tags = {
    Name = "EducacionIT-rtb-public"
  }
}

resource "aws_route_table" "Private_Route_Table" {
  vpc_id = aws_vpc.VPC_Terraform.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.NATGateway.id
  }

  route {
    cidr_block = "172.16.0.0/16"
    gateway_id = "local"
  }

  tags = {
    Name = "EducacionIT-rtb-private"
  }
}