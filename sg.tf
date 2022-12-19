variable "port_values" {
	type = list
	default = port_list
}

resource "aws_security_group" "main" {
   vpc_id = "vpc_id1"
   dynamic "ingress" {
     for_each = toset(var.port_values)
     content {
       from_port   = each.value
       to_port     = each.value
       protocol    = "tcp"
       cidr_blocks = ["0.0.0.0/0"]

   }
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
