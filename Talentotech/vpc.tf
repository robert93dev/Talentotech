resource "aws_vpc" "vpc_ec2_wordpress" {
    cidr_block = "172.16.0.0/16"
    enable_dns_hostnames = true 

    tags = {
      Name = "vpc_ec2_wordpress"
    }
  
}

resource "aws_subnet" "subnet_vpc_proyecto" {
    vpc_id = aws_vpc.vpc_ec2_wordpress.id
    cidr_block = "172.16.10.0/24"
    availability_zone = "us-east-1a"

    tags = {
      Name = "subnet_vpc_proyecto"
    }
  
}

resource "aws_internet_gateway" "int_gw_vpc_proy" {
    vpc_id = aws_vpc.vpc_ec2_wordpress.id
}

resource "aws_route_table" "rtb_subnet_proy" {

  vpc_id = aws_vpc.vpc_ec2_wordpress.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.int_gw_vpc_proy.id
  }

  tags = {
    Name = "rtb_subnet_proy"
  }
}
resource "aws_route_table_association" "rtb_aso" {
    subnet_id = aws_subnet.subnet_vpc_proyecto.id
    route_table_id = aws_route_table.rtb_subnet_proy.id
  
}