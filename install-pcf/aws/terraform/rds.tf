resource "aws_db_instance" "pcf_rds" {
    availability_zone       = "${var.aws_az1}"
    identifier              = "${var.prefix}-pcf"
    allocated_storage       = 100
    engine                  = "mariadb"
    engine_version          = "10.1.19"
    iops                    = 1000
    instance_class          = "${var.db_instance_type}"
    name                    = "bosh"
    username                = "${var.db_master_username}"
    password                = "${var.db_master_password}"
    parameter_group_name    = "default.mariadb10.1"
    vpc_security_group_ids  = ["${aws_security_group.rdsSG.id}"]
    multi_az                = false
    backup_retention_period = 7
    apply_immediately       = true
    skip_final_snapshot     = true
}
