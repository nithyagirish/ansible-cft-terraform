resource "aws_db_instance" "db" {
  allocated_storage    = "storage"
  engine               = "engine-type"
  engine_version       = "engine-version"
  instance_class       = "class"
  name                 = "dbname"
  username             = "dbusername"
  password             = "dbpassword"
  db_subnet_group_name = "subnet-name"
  vpc_security_group_ids = "vpc-id"
  availability_zone    =   "azs"
  skip_final_snapshot       = "fianl-snapshot"
  
  tags = {
    Name = "dbname"
  }
}