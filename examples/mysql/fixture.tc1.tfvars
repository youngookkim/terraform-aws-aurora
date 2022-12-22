aws_region = "ap-northeast-2"
azs        = ["ap-northeast-2a", "ap-northeast-2b", "ap-northeast-2c"]
cidrs      = ["10.0.0.0/16"]
name       = "aurora-mysql-tc1-multi-az"
tags       = { test = "tc1" }
aurora_cluster = {
  engine            = "aurora-mysql"
  version           = "5.7.mysql_aurora.2.07.1"
  port              = "3306"
  user              = "yourid"
  database          = "yourdb"
  backup_retention  = "5"
  apply_immediately = "false"
  cluster_parameters = {
    character_set_server = "utf8"
    character_set_client = "utf8"
  }
}
aurora_instances = [
  {
    instance_type = "db.t3.medium"
    instance_parameters = {
      autocommit = 0
    }
  },
  {
    instance_type = "db.t3.medium"
  }
]