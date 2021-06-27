variable "ssh_key" {
    description = "This is used for logging in"
    default     = "June2021key"
}

variable "instance_type" {
    default     = "t2.micro"
}

variable "tag_name" {
    default     = "WebServer Extending Terraform SG"
}

variable "bucket" {
    default     = "woshunkeye-devops-training"
}

variable "key" {
    default     = "training/june2021/day3-statefile"
}

variable "instance_ami" {
    default     = "ami-089539692cca55c6c"
}