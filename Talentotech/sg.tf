resource "aws_security_group" "sg_proyecto" {
    name = "sg_default"
    description = "Allow traffic HTTP SSH"
    vpc_id = aws_vpc.vpc_ec2_wordpress.id

    tags = {
      Name = "Allow all"
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Puerto HTTP"

    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Puerto SSH"

    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        description = "All Allow"
    }
}
