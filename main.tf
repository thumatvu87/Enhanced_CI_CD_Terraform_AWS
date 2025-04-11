
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "JenkinsDeployedInstance"
  }
}

resource "aws_s3_bucket" "app_bucket" {
  bucket = "myapp-jenkins-bucket-unique"
  acl    = "private"
}
