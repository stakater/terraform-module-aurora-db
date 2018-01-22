# Terraform Module to create AWS aurora-db

This repository contains tooling for deploying aurora-db in Amazon AWS using terraform and ansible.


# How to use it

0. You need to install ansible and terraform first

1. Run these,

```
$ mkdir -p build
$ touch tfvars.sh
```

2. Edit `tfvars.sh`, paste, and modify the following as needed.

_Note: S3 backend bucket needs to be created first._

```
export TF_VAR_stack_name_prefix="stakater"
export TF_VAR_environment="dev"
export TF_VAR_s3_bucket="449074299682-aurora-dev-state-store"
export TF_VAR_vpc_id="vpc-618a7307"
export TF_VAR_vpc_cidr="10.241.0.0/16"
export TF_VAR_private_subnet_ids="subnet-eafee68d,subnet-65a44b2d,subnet-0a735751"
export TF_VAR_region="eu-west-1"

export TF_VAR_database_name="aurora"
export TF_VAR_database_username="root"
export TF_VAR_database_password="root12345"
```

3. Run `ansible-playbook configure.yaml create.yaml`

## Delete

Run `ansible-playbook configure.yaml delete.yaml`
