terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = " ~>3.27"
        }
    }

    required_version = ">= 1.5.3"
}

provider "aws" {
    profile = "default"
    region = "us-west-2"
}

resource "aws_instance" "app_server" {
    ami = "ami-03f65b8614a860c29"
    instance_type = "t2.micro"
    key_name = "tcc-facul"
    tags = {
        Name = "First instance"
    }

}