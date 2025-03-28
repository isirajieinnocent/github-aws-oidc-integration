# GitHub Actions with AWS and OIDC Integration 🚀

👋Welcome innovators!

[In this comprehensive video tutorial](https://youtu.be/SXGTSHxm9js?si=30YE6wCOHY1By1Ds), we build upon our previous work by delving into secure authentication for GitHub actions using OIDC with AWS. First, we recap setting up the enterprise-like landing zone using Terraform, setting the stage for today's focus on authentication and authorization. By the end of this video, you'll learn how to create an OIDC provider, set up roles and policies in AWS, and build a simple pipeline to ensure everything works correctly. We'll walk through the entire process step-by-step, from configuring Terraform files to executing a functional test. Perfect for those looking to automate securely and efficiently. Don't forget to like, subscribe, and join me on this educational journey!

## Commands

The following commands are referenced:

```bash
terraform init --backend-config="inputs/sandbox.backend"

terraform plan --var-file="inputs/sandbox.tfvars"

terraform apply --var-file="inputs/sandbox.tfvars"

terraform destroy --var-file="inputs/sandbox.tfvars"

```

