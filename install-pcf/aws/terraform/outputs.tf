output "prefix" {
    value = "${var.prefix}"
}
output "region" {
    value = "${var.aws_region}"
}
output "az1" {
    value = "${var.aws_az1}"
}
output "vpc_id" {
    value = "${aws_vpc.PcfVpc.id}"
}
output "vpc_cidr" {
    value = "${var.vpc_cidr}"
}
output "pcf_security_group" {
    value = "${aws_security_group.pcfSG.id}"
}
output "opsman_eip" {
    value = "${aws_eip.opsman.public_ip}"
}
output "opsman_identifier" {
    value = "${aws_instance.opsman_az1.tags.Name}"
}
# s3 buckets
output "s3_pcf_bosh" {
    value = "${aws_s3_bucket.bosh.bucket}"
}
output "s3_buildpacks" {
    value = "${aws_s3_bucket.buildpacks.bucket}"
}
output "s3_pcf_droplets" {
    value = "${aws_s3_bucket.droplets.bucket}"
}
output "s3_pcf_packages" {
    value = "${aws_s3_bucket.packages.bucket}"
}
output "s3_pcf_resources" {
    value = "${aws_s3_bucket.resources.bucket}"
}

# DNS
output "dns" {
    value = "${cidrhost("${var.vpc_cidr}", 2)}"
}

# AZ1


output "public_subnet_cidr_az1" {
    value = "${var.public_subnet_cidr_az1}"
}

output "ert_subnet_cidr_az1" {
    value = "${var.ert_subnet_cidr_az1}"
}

output "ert_subnet_gw_az1" {
    value = "${cidrhost("${var.ert_subnet_cidr_az1}", 1)}"
}

output "rds_subnet_cidr_az1" {
    value = "${var.rds_subnet_cidr_az1}"
}

output "services_subnet_cidr_az1" {
    value = "${var.services_subnet_cidr_az1}"
}

output "services_subnet_gw_az1" {
    value = "${cidrhost("${var.services_subnet_cidr_az1}", 1)}"
}

output "dynamic_services_subnet_cidr_az1" {
    value = "${var.dynamic_services_subnet_cidr_az1}"
}

output "dynamic_services_subnet_gw_az1" {
    value = "${cidrhost("${var.dynamic_services_subnet_cidr_az1}", 1)}"
}

output "public_subnet_id_az1" {
    value = "${aws_subnet.PcfVpcPublicSubnet_az1.id}"
}
output "ert_subnet_id_az1" {
    value = "${aws_subnet.PcfVpcErtSubnet_az1.id}"
}
output "rds_subnet_id_az1" {
    value = "${aws_subnet.PcfVpcRdsSubnet_az1.id}"
}
output "services_subnet_id_az1" {
    value = "${aws_subnet.PcfVpcServicesSubnet_az1.id}"
}
output "dynamic_services_subnet_id_az1" {
    value = "${aws_subnet.PcfVpcDynamicServicesSubnet_az1.id}"
}
output "infra_subnet_id_az1" {
    value = "${aws_subnet.PcfVpcInfraSubnet_az1.id}"
}
output "infra_subnet_cidr_az1" {
    value = "${var.infra_subnet_cidr_az1}"
}
output "infra_subnet_gw_az1" {
    value = "${cidrhost("${var.infra_subnet_cidr_az1}", 1)}"
}

# RDS info

output "db_host" {
    value = "${aws_db_instance.pcf_rds.address}"
}
output "db_port" {
    value = "${aws_db_instance.pcf_rds.port}"
}
output "db_username" {
    value = "${aws_db_instance.pcf_rds.username}"
}
output "db_password" {
    value = "${aws_db_instance.pcf_rds.password}"
}
output "db_database" {
    value = "${aws_db_instance.pcf_rds.name}"
}
