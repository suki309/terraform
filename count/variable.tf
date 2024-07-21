variable "ami_id"{
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instance_names"{
    type = list
    default = ["MongoDB","cart","catalogue","user","redis","mysql","rabbitmq","shipping","payment","web"]
    
}