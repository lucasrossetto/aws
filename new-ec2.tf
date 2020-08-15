provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "/Users/lrossetto/Documents/lab/terraform_aws_ec2/user_ec2"
  profile                 = "user-ec2"
}


resource "aws_instance" "linux-amazon-001" {
  ami             = "ami-09d95fab7fff3776c"
  instance_type   = "t2.micro"
  key_name            = "teste-ec2"
  vpc_security_group_ids = ["sg-077daf5a70248a6d6"]
  subnet_id = "subnet-12be141c"
  associate_public_ip_address = "true"
  tags = {
    Name = "linux-amazon-001"
  }
}



resource "aws_instance" "linux-ubuntu-002" {
  ami             = "ami-0ac80df6eff0e70b5"
  instance_type   = "t2.micro"
  key_name            = "teste-ec2"
  vpc_security_group_ids = ["sg-0edf350af4ace55f4"]
  subnet_id = "subnet-00a5b47498a78c1d1"
  associate_public_ip_address = "true"
  tags = {
    Name = "linux-ubuntu-002"
  }
}


resource "aws_instance" "linux-debian-003" {
  ami             = "ami-0d8dc90079e445007"
  instance_type   = "t2.micro"
  key_name	      = "teste-ec2"
  vpc_security_group_ids = ["sg-077daf5a70248a6d6"]
  subnet_id = "subnet-12be141c"
  associate_public_ip_address = "true"
  tags = {
    Name = "linux-debian-003"
  }
}



resource "aws_instance" "linux-centos-004" {
  ami             = "ami-0083662ba17882949"
  instance_type   = "t3.small"
  key_name            = "teste-ec2"
  vpc_security_group_ids = ["sg-0edf350af4ace55f4"]
  subnet_id = "subnet-00a5b47498a78c1d1"
  associate_public_ip_address = "true"
  tags = {
    Name = "linux-centos-004"
  }
}



output "IP_Public_linux-amazon-001" {
  value = "${aws_instance.linux-amazon-001.public_ip}"
}

output "IP_Public_linux-ubuntu-002" {
  value = "${aws_instance.linux-ubuntu-002.public_ip}"
}

output "IP_Public_linux-debian-003" { 
  value = "${aws_instance.linux-debian-003.public_ip}"
}

output "IP_Public_linux-centos-004" {
  value = "${aws_instance.linux-centos-004.public_ip}"
}
