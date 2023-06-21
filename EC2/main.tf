resource "aws_instance" "MyInstance-1" {
    ami = "ami-022e1a32d3f742bd8"
    instance_type = "t2.micro"
    key_name = "macbook@400048mbp"
    vpc_security_group_ids = [aws_security_group.ssh-port.id]
    tags = {
        Name = "MyInstance-1"
    }
}

resource "aws_security_group" "ssh-port" {
    name = "MyInstance-1-SG"
    description = "for MyInstance connect from ssh port-22"
    vpc_id = "vpc-0bafa79a91572a3ac" 

    ingress {
      description      = "allow port 22"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["98.227.136.153/32"]
  }

    egress {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
  }  

  tags = {
    Name = "ssh-port"
  }
}