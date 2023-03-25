source "amazon-ebs" "aws" {
    ami_name     = "mypackerami"
    instance_type = "t2.micro"
    region = "us-east-1"
    run_tags = {
        Name = satishpackerami
    }
    source_ami = "ami-04581fbf744a7d11f"
    ssh_username = "ec2-user"
    subnet_id = "subnet-0c643a9307d39ef5b"
    iam_instance_profile = "ssm"
    ssh_interface = "session_manager"
    communicator = "ssh"
    tags = {
        Base_AMI_Name = "satishpacker"
    }
}

build {
    sources = ["source.amazon-ebs.aws"]
}
