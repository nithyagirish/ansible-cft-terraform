resource "aws_efs_file_system" "efs" {
   creation_token = "efs_token"
   performance_mode = "performance_mode1"
   encrypted = "encryption"
   availability_zone_name= "availability_zone_name1"
   lifecycle_policy {
    transition_to_ia = "transition_to_ia1"
  }
   tags = {
      Name = "efs_name"
   }
 }


