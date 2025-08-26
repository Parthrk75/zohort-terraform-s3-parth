# Terraform - S3 Bucket

This Terraform configuration creates:
- S3 bucket with versioning enabled
- Public access blocked
- Environment tagging
- Outputs the bucket name

## Usage
```bash
terraform init
terraform apply -auto-approve -var="name=parth"
