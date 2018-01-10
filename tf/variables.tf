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
}

variable "preferred_backup_window" {
}

variable "preferred_maintenance_window" {
}

variable "cluster_instance_count" {
}

variable "cluster_instance_class" {
}

variable "publicly_accessible" {
}
