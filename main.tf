resource "aws_instance" "instance"{
    instance_type = var.instance_type
    ami = var.ami

    tags = merge(
        { Name=var.name },
        var.tags
    )
    
    vpc_security_group_ids = var.security_groups_id

    user_data = <<-EOF
        #!/bin/bash
        yum update -y
        yum install httpd -y
        systemctl start httpd
        systemctl enable httpd
        echo "<html><body><div>Hello workd from $(hostname -f)</div></body></html>" > /var/www/html/index.html
        EOF
}
