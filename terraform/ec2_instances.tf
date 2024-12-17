resource "aws_instance" "node_app" {
  ami           = "ami-0b4624933067d393a"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet
  tags = {
    Name = "NodeAppInstance"
  }
}

resource "aws_instance" "backend" {
  ami           = "ami-0b4624933067d393a"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private_subnet
  tags = {
    Name = "BackendInstance"
  }
}
