provider "aws" {
    access_key = "AKIA4OCKKLMU4SWPM37E"
    secret_key = "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"
    region = "us-east-1"
}

resource "aws_instance" "ec2" {
    ami = "ami-0453898e98046c639"
    instance_type = "t2.micro"
    key_name = "pavan"
    tags = {
      name = "monolithic"
    }
}

resource "aws_security_group" "demo-sg" {
  name = "mysecuritygroup"
  description = "allow all traffic"
  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }



}
