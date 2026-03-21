data "aws_ami" "amazon_linux" {
    most_recent = true
    owners      = ["amazon"]

    filter {
        name = "name"
        values = ["al2023-ami-*-kernel-6.1-x86_64"]
    }
    filter {
        name = "virtualization-type"
        values = ["hvm"]
    } 
}

resource "aws_instance" "ec2"{
    ami = data.aws_ami.amazon_linux.id
    instance_type = var.instance_type

    tags = {
        Name = var.instance_name
    }
}

resource "aws_s3_bucket" "bucket" {
    bucket = "${var.bucket_name}-vimala-2026"
    tags = {
        Name = "terraform-s3-bucket"
    }
}
