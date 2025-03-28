# GitHub Actions with AWS and OIDC Integration 🚀

👋Welcome innovators!

[In this comprehensive video tutorial](https://youtu.be/SXGTSHxm9js?si=30YE6wCOHY1By1Ds), we build upon our previous work by delving into secure authentication for GitHub actions using OIDC with AWS. First, we recap setting up the enterprise-like landing zone using Terraform, setting the stage for today's focus on authentication and authorization. By the end of this video, you'll learn how to create an OIDC provider, set up roles and policies in AWS, and build a simple pipeline to ensure everything works correctly. We'll walk through the entire process step-by-step, from configuring Terraform files to executing a functional test. Perfect for those looking to automate securely and efficiently. Don't forget to like, subscribe, and join me on this educational journey!

- [Commands](#commands)
- [Terraform Documentation](#terraform-documentation)
- [Workflow Documentation](#workflow-documentation)

## Commands

The following commands are referenced:

```bash
terraform init --backend-config="inputs/sandbox.backend"

terraform plan --var-file="inputs/sandbox.tfvars"

terraform apply --var-file="inputs/sandbox.tfvars"

terraform destroy --var-file="inputs/sandbox.tfvars"
```

## Terraform Documentation

- `provider.tf`: Configures the AWS provider with the region set to us-west-2 and applies default tags for all resources, including environment, owner, and source.
- `variables.tf`: Defines input variables such as environment, project_name, github_org, github_repo, and iam_role_name with descriptions and default values.
- `backend.tf`: Specifies an S3 backend for storing Terraform state, with the configuration details provided in the inputs/sandbox.backend file.
- `inputs/sandbox.backend`: Contains backend configuration details, including the S3 bucket name, key, region, DynamoDB table for state locking, and encryption settings.
- `inputs/sandbox.tfvars`: Provides variable values specific to the sandbox environment, such as environment, project_name, github_org, github_repo, and iam_role_name.
- `main.tf`: Creates an OIDC provider for GitHub Actions and an IAM role with a policy allowing GitHub Actions to assume the role. Attaches the AWS-managed AdministratorAccess policy to the role.
- `outputs.tf`: Currently empty but can be used to define outputs for this module in the future.

## Workflow Documentation

This file defines a GitHub Actions workflow named "Hello World OIDC". Here's a breakdown of its functionality:

- Trigger: The workflow is triggered manually using the `workflow_dispatch` event.

- Permissions:

  - Grants id-token: write permission, which is required for OpenID Connect (OIDC) authentication.
  - Grants contents: read permission to allow the workflow to check out the repository.

- Job:

  - A single job named `hello-world` runs on the `ubuntu-latest` virtual environment.
  - Steps:

    - Checkout Repository: Uses the actions/checkout@v4 action to clone - the repository.
    - Configure AWS Credentials: Uses the aws-actions/ - configure-aws-credentials@v4 action to authenticate with AWS - using OIDC. It assumes a specified IAM role and sets the AWS - region to `us-west-2`.
    - Verify AWS Access: Runs the `aws s3 ls` command to list S3 buckets, verifying that the AWS credentials are correctly configured.
