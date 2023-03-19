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

resource "aws_instance" "web" {
  ami           = "ami-02f3f602d23f1659d"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
