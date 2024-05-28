resource "aws_instance" "server_wordpress" {
  ami = "ami-058bd2d568351da34"
  instance_type = "t2.micro"
  key_name = "key_servidor_test"
  subnet_id = aws_subnet.subnet_vpc_proyecto.id
  security_groups = [aws_security_group.sg_proyecto.id]
  private_ip = "172.16.10.4"
  
  

  tags = {
    Name = "server_wordpress"
  }
}