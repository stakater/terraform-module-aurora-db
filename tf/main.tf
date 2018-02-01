provider "aws" {
  region = "${var.region}"
}

data "aws_availability_zones" azs { }

terraform {
  backend "s3" {
    key    = "terraform_states/aurora-db/terraform.tfstate"
  }
}

module "aurora-db" {
  source = "github.com/stakater/blueprint-storage-aws.git//modules/rds/aurora-db?ref=v0.2.0"
  name = "${var.stack_name_prefix}-${var.environment}-${var.database_name}"
  vpc_id = "${var.vpc_id}"
  vpc_cidr = "${var.vpc_cidr}"
  subnets = "${var.private_subnet_ids}"

  engine         = "${var.engine}"
  aurora_db_name = "${var.database_name}"
  aurora_db_username = "${var.database_username}"
  aurora_db_password = "${var.database_password}"

  # DB Backup
  skip_final_snapshot     = "${var.skip_final_snapshot}"
  backup_retention_period = "${var.backup_retention_period}"
  preferred_backup_window = "${var.preferred_backup_window}"
  preferred_maintenance_window = "${var.preferred_maintenance_window}"

  cluster_instance_count = "${var.cluster_instance_count}"
  cluster_instance_class = "${var.cluster_instance_class}"
  publicly_accessible = "${var.publicly_accessible}"
}