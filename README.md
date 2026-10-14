# AWS Infrastructure via Terraform with Automated CI/CD

An automated Infrastructure as Code (IaC) repository that provisions a highly available and scalable foundational network on Amazon Web Services (AWS) using **Terraform** and **GitHub Actions**.

---

## 🏗️ Architecture Overview

The Terraform configuration provisions the following AWS components:
* **Custom VPC** (`10.0.0.0/16`) with DNS support enabled.
* **Public Subnet** (`10.0.1.0/24`) attached to Availability Zone `us-east-1a`.
* **Internet Gateway (IGW)** to allow inbound and outbound internet connectivity.
* **Route Table** routing `0.0.0.0/0` traffic directly to the Internet Gateway.

---

## 🔄 Automated CI/CD Pipeline

This project leverages **GitHub Actions** for continuous integration. On every `push` or `pull_request` to the `main` branch, the pipeline automatically:
1. Checks out code repository.
2. Initializes Terraform environment (`terraform init`).
3. Enforces code format standards (`terraform fmt -check`).
4. Validates syntax and configuration soundness (`terraform validate`).

---

## 🚀 How to Run Locally

### Prerequisites
* [Terraform CLI](https://www.terraform.io/downloads) (>= 1.0.0)
* [AWS CLI](https://aws.amazon.com/cli/) configured with valid access keys.

### Execution Steps
```bash
# Clone the repository
git clone [https://github.com/rrooxan-debug/aws-devops-terraform.git](https://github.com/rrooxan-debug/aws-devops-terraform.git)
cd aws-devops-terraform

# Initialize Terraform modules
terraform init

# Preview resource changes
terraform plan

# Apply infrastructure provision
terraform apply


On Wed, Oct 14, 2026, 4:11 AM Rooxan Rooxan <rrooxan@gmail.com> wrote:
cat << 'EOF' > README.md
# AWS Infrastructure via Terraform with Automated CI/CD

An automated Infrastructure as Code (IaC) repository that provisions a highly available and scalable foundational network on Amazon Web Services (AWS) using **Terraform** and **GitHub Actions**.

---

## 🏗️ Architecture Overview

The Terraform configuration provisions the following AWS components:
* **Custom VPC** (`10.0.0.0/16`) with DNS support enabled.
* **Public Subnet** (`10.0.1.0/24`) attached to Availability Zone `us-east-1a`.
* **Internet Gateway (IGW)** to allow inbound and outbound internet connectivity.
* **Route Table** routing `0.0.0.0/0` traffic directly to the Internet Gateway.

---

## 🔄 Automated CI/CD Pipeline

This project leverages **GitHub Actions** for continuous integration. On every `push` or `pull_request` to the `main` branch, the pipeline automatically:
1. Checks out code repository.
2. Initializes Terraform environment (`terraform init`).
3. Enforces code format standards (`terraform fmt -check`).
4. Validates syntax and configuration soundness (`terraform validate`).

---

## 🚀 How to Run Locally

### Prerequisites
* [Terraform CLI](https://www.terraform.io/downloads) (>= 1.0.0)
* [AWS CLI](https://aws.amazon.com/cli/) configured with valid access keys.

### Execution Steps
```bash
# Clone the repository
git clone [https://github.com/rrooxan-debug/aws-devops-terraform.git](https://github.com/rrooxan-debug/aws-devops-terraform.git)
cd aws-devops-terraform

# Initialize Terraform modules
terraform init

# Preview resource changes
terraform plan

# Apply infrastructure provision
terraform apply
