terraform {
  backend "s3" {
    bucket         = "terraform-s3-eks-jenkins"
    key            = "eks/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}