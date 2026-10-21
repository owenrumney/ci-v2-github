provider "aws" {
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  access_key                  = "mock"
  secret_key                  = "mock"
}

resource "aws_instance" "bastion" {
  ami           = "ami-c55b159cbfafe1f0"
  instance_type = "t3.4xlarge"
}

resource "aws_instance" "batch" {
  count = 2

  ami           = "ami-c55b159cbfafe1f0"
  instance_type = "m5.8xlarge"
}
