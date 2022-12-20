resource "aws_db_subnet_group" "db-subnet" {
name = "DB subnet group"
subnet_ids = ["subnet_id1", "subnet_id2"]
}

resource "aws_db_instance" "db" {
  allocated_storage    = "allocated_storage1"
  backup_window = "backup_window1"
  vpc_security_group_ids= ["vpc_security_group_ids1"]
  engine               = "engine_type"
  engine_version       = "engine_version1"
  instance_class       = "instance_class1"
  db_subnet_group_name =  "${aws_db_subnet_group.db-subnet.name}"
  db_name                = "dbname"
  username             = "dbusername"
  password             = "dbpassword"
  deletion_protection= "deletion_protection1"
  skip_final_snapshot       = "fianl_snapshot"
  storage_type= "storage_type1"
  
  tags = {
    Name = "dbname"
  }
}