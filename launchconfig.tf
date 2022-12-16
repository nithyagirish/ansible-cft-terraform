resource "aws_launch_configuration" "web" {
  name_prefix = "launch-configuration-name"
  image_id = "ami" 
  instance_type = "type"
  key_name = "keypair"
  security_groups = ["security-groups" ]
  associate_public_ip_address = " associate_public_ip_address1"
  user_data = "${file("data.sh")}"
  lifecycle {
    create_before_destroy = "create_before_destroy1"
  }
}