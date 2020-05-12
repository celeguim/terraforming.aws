resource "aws_instance" "test" {
    ami                         = "ami-0323c3dd2da7fb37d"
    availability_zone           = "us-east-1d"
    ebs_optimized               = false
    instance_type               = "t2.micro"
    monitoring                  = false
    key_name                    = "BastionHostKey"
    subnet_id                   = "subnet-20e1fc7c"
    vpc_security_group_ids      = ["sg-0b91650c133c4f9cc"]
    associate_public_ip_address = true
    private_ip                  = "172.31.47.83"
    source_dest_check           = true

    root_block_device {
        volume_type           = "gp2"
        volume_size           = 8
        delete_on_termination = true
    }

}

