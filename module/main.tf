resource "aws_instance" "ec2" {
    ami = "${data.aws_ami.packer_image.id}"
    instance_type = "${var.instance_type}"
    subnet_id = "${var.subnet_id}"
    iam_instance_profile = ""
    tags = {
        Name = "${var.stack}"
    }
}

data "aws_ami" "packer_image" {
     most_recent = "true"

     filter { 
        name = "name"
        values = {""Packer-image"}
     }
filter { 
    name = "virtualization-type"
    values = ["hvm"]
}
}
