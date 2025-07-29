terraform {
  backend "s3" {
    bucket         = "backend-bucket-yourname"  # Must match exactly
    key            = "github-oidc/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}