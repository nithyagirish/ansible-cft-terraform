resource "aws_instance" "name" {
   ami = "ami1"
   instance_type = "type1"
   associate_public_ip_address = true
   key_name = "keyname1"
   security_groups="sg1"
}
