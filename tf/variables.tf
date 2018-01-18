variable "stack_name_prefix" {
}

variable "environment" {
}

variable "region" {
}

variable "vpc_id" {
}

variable "vpc_cidr" {
}

variable "private_subnet_ids" {
  description = "Comma separated list of subnet ids"
}

variable "database_name" {
}

variable "database_username" {
}

variable "database_password" {
}

variable "backup_retention_period" {
    default = 14
}

variable "preferred_backup_window" {
    default = "02:00-03:00"
}

variable "preferred_maintenance_window" {
    default = "wed:03:00-wed:04:00"
}

variable "cluster_instance_count" {
    default = "1"
}

variable "cluster_instance_class" {
    default = "db.r3.large"
}

variable "publicly_accessible" {
    default = false
}
