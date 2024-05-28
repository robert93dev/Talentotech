resource "aws_eip" "elastic_ip_ejercicio" {
    domain = "vpc"
    instance = aws_instance.server_wordpress.id
    depends_on = [ aws_internet_gateway.int_gw_vpc_proy ]
    associate_with_private_ip = "172.16.10.4"
    tags = {
    Name = "eip_ejercicio"
  }
}
