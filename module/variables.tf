variable "subnet_id" {}
variable "availability_zone" {}

variable region {

    description = "AWS Region"
    default = "us-east-1"
}

variable "stack" {
description = "Name of the stack"
default = "Packer-image"

}

variable "instance" {
    default = 1
    description = "No of instances"
}

variable "instance_type" {
 descripton = "Size of the VM"

 default = "t2.micro"
 }
