provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA3AEEPI7DLFZ54267"
  secret_key = "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"
}

resource "aws_instance" "ELB1" {
  ami               = "ami-08f3d892de259504d"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1e"
  key_name       = "${aws_key_pair.session.key_name}"


tags = {
    Name = "ELB1"
  }
}

resource "aws_key_pair" "session" {
  key_name   = "session"
  public_key = "${file("key/session.pub")}"
}


resource "aws_instance" "ELB2" {
  ami               = "ami-08f3d892de259504d"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1c"
  key_name       = "${aws_key_pair.session.key_name}"


tags = {
    Name = "ELB2"
  }
}


