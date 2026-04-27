terraform {
  backend "s3" {
    bucket         = "aws-tf-backend-shaunak-221"
    key            = "eks-cluster/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "state-lock-shaunak"
    encrypt        = true
  }
}
