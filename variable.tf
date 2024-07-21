variable "ami_id"{
    type = string     # this is datatype
    default = "ami-0b4f379183e5706b9"  # this is default value
}

variable "instance_type"{
    default = "t2.micro"
}

variable "sg_name"{
    default = "allow_all"
}

variable "sg_cidr"{
    type = list
    default = ["0.0.0.0/0"]
}

variable "tags" {
    type = map
    default = {
        Name = "MongoDB"
        Environment = "DEV"
        Terraform = "True"
        Project = "Roboshop"
        Component = "MongoDB"
    }
}