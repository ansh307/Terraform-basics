# Terraform AWS Infrastructure Setup

This repository contains Terraform configurations used to provision and manage AWS infrastructure as part of my DevOps learning journey. It demonstrates key concepts and practices such as Infrastructure as Code (IaC), secure state management, and automated provisioning.

## 🚀 What This Project Does

Within this Terraform project, you'll find configuration files that:

- **Define Infrastructure as Code (IaC)**: Use declarative `.tf` files to define AWS resources such as EC2 instances, security groups, and SSH key pairs.
- **Manage AWS Resources**: Provision and configure EC2 instances with appropriate networking and access rules.
- **Automate Instance Setup**: Use Terraform provisioners to copy and execute a shell script (`web.sh`) on the EC2 instance to perform post-deployment tasks.
- **Secure State Management**: Store Terraform state remotely in an AWS S3 bucket, enabling secure collaboration and state consistency.
- **Parameterize Configurations**: Define input variables in `vars.tf` to allow flexible and reusable infrastructure setups.
- **Secure the Codebase**: Use `.gitignore` to avoid committing sensitive data like private keys or local Terraform state.

## 📂 Directory Structure

```
Terraform/
├── main.tf           # Main configuration file for AWS resources
├── vars.tf           # Variable definitions
├── outputs.tf        # Outputs after resource creation
├── web.sh            # Shell script for EC2 provisioning
├── provider.tf       # AWS provider configuration
├── backend.tf        # Remote backend setup for state storage
├── .gitignore        # Ignore sensitive files from Git
````

## 🔧 Terraform Workflow

1. **Initialize Terraform:**
   ```bash
   terraform init
   ```

2. **Format Terraform:**
   ```bash
   terraform fmt
   ```

3. **Validate Terraform:**
   ```bash
   terraform validate
   ```

4. **Plan the Changes:**

   ```bash
   terraform plan
   ```

5. **Apply the Configuration:**

   ```bash
   terraform apply
   ```

## 🔐 Security Notes

* The `.gitignore` file ensures private keys and other sensitive files are not tracked by Git.
* The use of a **remote backend** (S3) helps secure and share Terraform state safely in collaborative environments.

## 📘 Key Learnings

* How to write modular, reusable Terraform code using variables.
* Automating server setup using provisioners and shell scripts.
* Managing Terraform state securely using remote backends.
* Gaining hands-on experience with core Terraform CLI commands.



