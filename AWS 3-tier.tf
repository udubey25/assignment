terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
    region = "ap-south-1"
    profile = "root"
}

resource "aws_vpc" "demo-vpc" {
    cidr_block = "10.0.0.0/16"

  
}
resource "aws_subnet" "demo-subnet" {
    vpc_id = $(aws_vpc.demo-vpc.id)
    cidr_block = "10.0.1.0/24"
    availability_zone = "ap-south-1a"
}
resource "aws_s3_bucket" "first_bucket" {
    bucket= "first_bucket"
    acl = "private"
  
}

resource "aws_instance" "web" {
    ami = "ami-0c6615d1e95c98aca (64-bit x86)"
    instance_type = "t2.micro"

    
  
}

resource "aws_db_instance" "backend" {
    identifier = "education"
    instance_class = "db.t3.micro"
    engine = "postgres"
    engine_version = "13.1"
    username= "username"
    password="password"
    publicly_accessible = true
}   
