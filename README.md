# Geth Ethereum Node Deployment (Terraform + AWS)

This project provisions an Ethereum full node using Geth on AWS via Terraform.

## 🔧 Stack
- AWS EC2
- Terraform
- Geth
- Systemd
- GitHub Actions

## 🚀 Features
- Infrastructure as Code (IaC) using Terraform
- Auto-setup Geth as a systemd service
- Optional public RPC access for testing
- Easily destroy with `terraform destroy`

## 📦 Deployment

1. Set your AWS credentials.
2. Create a key pair and update `variables.tf`.
3. Run:
   ```
   terraform init
   terraform apply
   ```

## 🧠 Resources
- [Ethereum Geth Docs](https://geth.ethereum.org/docs/)
- [Terraform AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)