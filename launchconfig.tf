resource "aws_launch_configuration" "web" {
  name_prefix = "launch-configuration-name"
  image_id = "ami" 
  instance_type = "type1"
  key_name = "keypair"
  security_groups = ["security_groups1" ]
  associate_public_ip_address = "associate_public_ip_address1"
  user_data = "user_data1"
  lifecycle {
    create_before_destroy = "create_before_destroy1"
  }
}