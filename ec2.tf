resource "aws_instance" "my-wish"{
    ami = var.ami_id
    instance_type = var.instance_type
    security_groups = [aws_security_group.allow_all.name]

    tags = var.tags

}


