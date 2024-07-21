terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.56.1"
    }
  }
  backend "s3"{
    bucket = "roboshop1"
    key = "for_each-demo"
    region = "us-east-1"
    dynamodb_table = "roboshop-locking"
  }
}

provider "aws" {
  region = "us-east-1" 
}