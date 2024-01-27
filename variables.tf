variable "ami"{
    type= string
}

variable "instance_type"{
    type= string
}

variable "name"{
    type= string
}

variable "security_groups_id"{
    type = list
}
variable "tags" {
    type = map(string)
    default = {}
}