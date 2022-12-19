resource "aws_ebs_volume" "sample" {
  availability_zone = "availability_zone1"
  size              = "size1"
  encrypted = "encrypted1"
  final_snapshot = "final_snapshot1"
  type = "type1"
  tags = {
    Name = "ebs_name"
  }
}