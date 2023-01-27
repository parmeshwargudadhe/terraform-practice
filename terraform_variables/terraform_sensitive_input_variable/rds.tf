resource "aws_db_instance" "db1" {
  allocated_storage   = 5
  db_name = "mydb1"
  engine              = "mysql"
  engine_version = "5.7"
  instance_class      = "db.t2.micro"
  username            = var.db_username
  password            = var.db_password
  skip_final_snapshot = true
}