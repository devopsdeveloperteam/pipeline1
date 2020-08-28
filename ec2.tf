provider "aws" {
  access_key = "AKIAQJTJXASACQAVUGGY"
  secret_key = "LPmK2q1QzEwGpOYsX6UrDgZTksFJSRZFhGInh9d4"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}
