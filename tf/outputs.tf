output "aurora-db-endpoint" {
  value = "${module.aurora-db.endpoint}"
}

output "security-group-id" {
  value = "${module.aurora-db.security-group-id}"
}