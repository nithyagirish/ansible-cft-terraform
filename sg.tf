terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
    region = "us-west-2"
  
}    



variable "port_values" {
	type = list
	default = ["port_list"]
}

resource "aws_security_group" "main" {
   count = length(var.port_values)
   name   = "security"
   vpc_id = "vpc_id1"
   ingress {
       from_port   = element(var.port_values,count.index)
       to_port     = element(var.port_values,count.index)
       protocol    = "tcp"
       cidr_blocks = ["0.0.0.0/0"]

   }
   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }      
   

   tags = {
      Name = "AWS security group dynamic block"
   }
}
