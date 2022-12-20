resource "aws_db_instance" "db" {
  allocated_storage    = "allocated_storage1"
  availability_zone= "availability_zone1"
  backup_window = "backup_window1"
  vpc_security_group_ids= ["vpc_security_group_ids1"]
  engine               = "engine_type"
  engine_version       = "engine_version1"
  instance_class       = "instance_class1"
  name                 = "dbname"
  username             = "dbusername"
  password             = "dbpassword"
  deletion_protection= "deletion_protection1"
  skip_final_snapshot       = "fianl_snapshot"
  max_allocated_storage = "max_storage1"
  multi_az = "multi_az1"
  storage_type= "storage_type1"
  
  tags = {
    Name = "dbname"
  }
}