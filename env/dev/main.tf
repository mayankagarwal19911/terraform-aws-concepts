module "security_group" {
    source="../../modules/security-group"
}

module "ec2" {
    source="../../modules/ec2"
    ami = "ami-0a3c3a20c09d6f377"
    instance_type = "t2.micro"
    name = "Shipping"
    security_groups_id = [module.security_group.ssh_security_group_id, module.security_group.http_security_group_id]
}
