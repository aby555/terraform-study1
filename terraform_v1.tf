#resource "aws_instance" "frontend" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t3.micro"
#
#  tags = {
#    Name = "frontend"
#  }
#}

#output "frontend" {
#  value = aws_instance.frontend.public_ip
#}

data "aws_ami" "centos" {
  owners = ["973714476881"]
  name_regex = "Centos-8-DevOps-Practice"
}

resource "aws_instance" "frontend" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}