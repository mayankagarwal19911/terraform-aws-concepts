output "ssh_security_group_id"{
    value =  aws_security_group.allow_ssh.id
    description = "Security group ID to allow SSH into instance"
}


output "http_security_group_id"{
    value =  aws_security_group.web_server.id
    description = "Security group ID to allow SSH into instance"
}
