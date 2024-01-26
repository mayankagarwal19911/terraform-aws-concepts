resource "aws_security_group" "allow_ssh" {
  name        = "Allow SSH"
  description = "Allow SSH inbound traffic"
  vpc_id      = "vpc-06c149165c857aaa8"
 
  ingress {
    description      = "Allow traffic on port 80 from everywhere"
    from_port        = 22
    to_port          = 28
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
 
 
  tags = {
    Name = "allow_ssh"
  }
  
  lifecycle {
    create_before_destroy = true
  }
}


resource "aws_security_group" "web_server" {
  name        = "Allow HTTP"
  description = "Allow HTTP traffic"
  vpc_id      = "vpc-06c149165c857aaa8"
 
  ingress {
    description      = "Allow traffic on port 80 from everywhere"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
 
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
 
  tags = {
    Name = "Allow HTTP"
  }
}

# resource "aws_security_group" "ManualSecGroup" {
#   # (resource arguments)
# }