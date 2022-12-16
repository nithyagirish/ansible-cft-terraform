variable "storage" {
	default = "10"
}
variable "engine-type" {
	default = "postgres"
}

variable "engine-version" {
	default = "13.4"
}

variable "class" {
	default = "t2.micro"
}
variable "name" {
	default = "db"
}
variable "username" {}
variable "password" {}
variable "subnet-name"{}
variable "vpc-id" {}
variable "azs" {}
variable "final-snapshot" {
    type= bool
}

variable "db-name" {
	default = "db"
}


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