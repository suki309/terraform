data "aws_ami" "ami_id" {
    most_recent = true
    owners = ["amazon"]
    filter {
        name = "name"
        values = ["amzn2-ami-kernel-5.10-hvm-2.0.20240620.0-x86_64-gp2"]
    }
}

output "ami_id" {
    value = data.aws_ami.ami_id.id
}

data "aws_vpc" "default" {
    default = true
}

output "vpc_info" {
    value = data.aws_vpc.default
}

resource "aws_security_group" "allow_http"{
    name = "security_group"
    vpc_id = data.aws_vpc.default.id
    description = "allowing all ports"

    ingress{
        description = "allowing all ports"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks =["0.0.0.0/0"]
    }
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks =["0.0.0.0/0"]
    }
}
 