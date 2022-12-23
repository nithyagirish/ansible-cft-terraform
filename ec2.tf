resource "aws_instance" "myinstance" {
   ami = "ami1"
   instance_type = "type1"
   associate_public_ip_address = "associate_public_ip_address1"
   availability_zone= "availability_zone1"
   key_name = "keyname1"
   vpc_security_group_ids =["security_groups1"]
   subnet_id= "subnet_id1"
   user_data= << EOF
      #! /bin/bash
      data1
   EOF
}
