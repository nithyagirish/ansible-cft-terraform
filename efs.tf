resource "aws_efs_file_system" "efs" {
   creation_token = "efs-token"
   performance_mode = "performance_mode1"
   throughput_mode = "throughput_mode1"
   encrypted = "encryption"
   tags = {
      Name = "Efs-name"
   }
 }


resource "aws_efs_mount_target"  "efs-mt" {
   file_system_id  = aws_efs_file_system.efs.id
   subnet_id = "subnet-id"
   security_groups = "sg-id"
 }