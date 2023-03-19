# data "aws_ami" "app_ami" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["979382823631"] # Bitnami
# }

resource "aws_instance" "example" {
  ami           = "ami-0d2017e886fc2c0ab"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
