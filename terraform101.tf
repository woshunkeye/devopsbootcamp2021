terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "eu-west-2"
}

data "template_file" "ec2_user_data" {
  template ="${file("${path.module}/bootstrap.txt")}"
} 

resource "aws_instance" "app_server" {
  ami           = "ami-089539692cca55c6c"
  instance_type = "t2.micro"
  key_name      = "June2021key"
  user_data = "${data.template_file.ec2_user_data.template}"

  tags = {
    Name = "WebServer2"
  }
}
