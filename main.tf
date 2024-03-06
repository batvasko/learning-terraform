data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["979382823631"] # Bitnami
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.app_ami.id
  availability_zone = var.az_1a
  instance_type = var.instance_type
  # instance_type = "t3.nano"
  # availability_zone = "eu-west-1a"  # Explicitly set the desired zone

  tags = {
    Name = "HelloWorld"
  }
}
